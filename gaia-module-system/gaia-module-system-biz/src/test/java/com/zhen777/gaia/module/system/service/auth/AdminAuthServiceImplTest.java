package com.zhen777.gaia.module.system.service.auth;

import cn.hutool.core.util.ReflectUtil;
import com.zhen777.gaia.framework.common.enums.CommonStatusEnum;
import com.zhen777.gaia.framework.common.enums.UserTypeEnum;
import com.zhen777.gaia.framework.test.core.ut.BaseDbUnitTest;
import com.zhen777.gaia.module.system.api.sms.SmsCodeApi;
import com.zhen777.gaia.module.system.api.social.dto.SocialUserBindReqDTO;
import com.zhen777.gaia.module.system.controller.admin.auth.vo.*;
import com.zhen777.gaia.module.system.dal.dataobject.oauth2.OAuth2AccessTokenDO;
import com.zhen777.gaia.module.system.dal.dataobject.user.AdminUserDO;
import com.zhen777.gaia.module.system.enums.logger.LoginLogTypeEnum;
import com.zhen777.gaia.module.system.enums.logger.LoginResultEnum;
import com.zhen777.gaia.module.system.enums.sms.SmsSceneEnum;
import com.zhen777.gaia.module.system.enums.social.SocialTypeEnum;
import com.zhen777.gaia.module.system.service.logger.LoginLogService;
import com.zhen777.gaia.module.system.service.member.MemberService;
import com.zhen777.gaia.module.system.service.oauth2.OAuth2TokenService;
import com.zhen777.gaia.module.system.service.social.SocialUserService;
import com.zhen777.gaia.module.system.service.user.AdminUserService;
import com.xingyuv.captcha.model.common.ResponseModel;
import com.xingyuv.captcha.service.CaptchaService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;

import javax.annotation.Resource;
import javax.validation.ConstraintViolationException;
import javax.validation.Validation;
import javax.validation.Validator;

import static cn.hutool.core.util.RandomUtil.randomEle;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertPojoEquals;
import static com.zhen777.gaia.framework.test.core.util.AssertUtils.assertServiceException;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomPojo;
import static com.zhen777.gaia.framework.test.core.util.RandomUtils.randomString;
import static com.zhen777.gaia.module.system.enums.ErrorCodeConstants.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

@Import(AdminAuthServiceImpl.class)
public class AdminAuthServiceImplTest extends BaseDbUnitTest {

    @Resource
    private AdminAuthServiceImpl authService;

    @MockBean
    private AdminUserService userService;
    @MockBean
    private CaptchaService captchaService;
    @MockBean
    private LoginLogService loginLogService;
    @MockBean
    private SocialUserService socialUserService;
    @MockBean
    private SmsCodeApi smsCodeApi;
    @MockBean
    private OAuth2TokenService oauth2TokenService;
    @MockBean
    private MemberService memberService;
    @MockBean
    private Validator validator;

    @BeforeEach
    public void setUp() {
        ReflectUtil.setFieldValue(authService, "captchaEnable", true);
        // ???????????? Validator ??????
        ReflectUtil.setFieldValue(authService, "validator",
                Validation.buildDefaultValidatorFactory().getValidator());
    }

    @Test
    public void testAuthenticate_success() {
        // ????????????
        String username = randomString();
        String password = randomString();
        // mock user ??????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setUsername(username)
                .setPassword(password).setStatus(CommonStatusEnum.ENABLE.getStatus()));
        when(userService.getUserByUsername(eq(username))).thenReturn(user);
        // mock password ??????
        when(userService.isPasswordMatch(eq(password), eq(user.getPassword()))).thenReturn(true);

        // ??????
        AdminUserDO loginUser = authService.authenticate(username, password);
        // ??????
        assertPojoEquals(user, loginUser);
    }

    @Test
    public void testAuthenticate_userNotFound() {
        // ????????????
        String username = randomString();
        String password = randomString();

        // ??????, ???????????????
        assertServiceException(() -> authService.authenticate(username, password),
                AUTH_LOGIN_BAD_CREDENTIALS);
        verify(loginLogService).createLoginLog(
                argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_USERNAME.getType())
                        && o.getResult().equals(LoginResultEnum.BAD_CREDENTIALS.getResult())
                        && o.getUserId() == null)
        );
    }

    @Test
    public void testAuthenticate_badCredentials() {
        // ????????????
        String username = randomString();
        String password = randomString();
        // mock user ??????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setUsername(username)
                .setPassword(password).setStatus(CommonStatusEnum.ENABLE.getStatus()));
        when(userService.getUserByUsername(eq(username))).thenReturn(user);

        // ??????, ???????????????
        assertServiceException(() -> authService.authenticate(username, password),
                AUTH_LOGIN_BAD_CREDENTIALS);
        verify(loginLogService).createLoginLog(
                argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_USERNAME.getType())
                        && o.getResult().equals(LoginResultEnum.BAD_CREDENTIALS.getResult())
                        && o.getUserId().equals(user.getId()))
        );
    }

    @Test
    public void testAuthenticate_userDisabled() {
        // ????????????
        String username = randomString();
        String password = randomString();
        // mock user ??????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setUsername(username)
                .setPassword(password).setStatus(CommonStatusEnum.DISABLE.getStatus()));
        when(userService.getUserByUsername(eq(username))).thenReturn(user);
        // mock password ??????
        when(userService.isPasswordMatch(eq(password), eq(user.getPassword()))).thenReturn(true);

        // ??????, ???????????????
        assertServiceException(() -> authService.authenticate(username, password),
                AUTH_LOGIN_USER_DISABLED);
        verify(loginLogService).createLoginLog(
                argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_USERNAME.getType())
                        && o.getResult().equals(LoginResultEnum.USER_DISABLED.getResult())
                        && o.getUserId().equals(user.getId()))
        );
    }

        @Test
    public void testLogin_success() {
        // ????????????
        AuthLoginReqVO reqVO = randomPojo(AuthLoginReqVO.class, o ->
                o.setUsername("test_username").setPassword("test_password")
                        .setSocialType(randomEle(SocialTypeEnum.values()).getType()));

        // mock ???????????????
        ReflectUtil.setFieldValue(authService, "captchaEnable", false);
        // mock user ??????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setId(1L).setUsername("test_username")
                .setPassword("test_password").setStatus(CommonStatusEnum.ENABLE.getStatus()));
        when(userService.getUserByUsername(eq("test_username"))).thenReturn(user);
        // mock password ??????
        when(userService.isPasswordMatch(eq("test_password"), eq(user.getPassword()))).thenReturn(true);
        // mock ????????????????????? Redis
        OAuth2AccessTokenDO accessTokenDO = randomPojo(OAuth2AccessTokenDO.class, o -> o.setUserId(1L)
                .setUserType(UserTypeEnum.ADMIN.getValue()));
        when(oauth2TokenService.createAccessToken(eq(1L), eq(UserTypeEnum.ADMIN.getValue()), eq("default"), isNull()))
                .thenReturn(accessTokenDO);

        // ??????????????????
        AuthLoginRespVO loginRespVO = authService.login(reqVO);
        assertPojoEquals(accessTokenDO, loginRespVO);
        // ??????????????????
        verify(loginLogService).createLoginLog(
            argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_USERNAME.getType())
                    && o.getResult().equals(LoginResultEnum.SUCCESS.getResult())
                    && o.getUserId().equals(user.getId()))
        );
        verify(socialUserService).bindSocialUser(eq(new SocialUserBindReqDTO(
                user.getId(), UserTypeEnum.ADMIN.getValue(),
                reqVO.getSocialType(), reqVO.getSocialCode(), reqVO.getSocialState())));
    }

    @Test
    public void testSendSmsCode() {
        // ????????????
        String mobile = randomString();
        Integer scene = randomEle(SmsSceneEnum.values()).getScene();
        AuthSmsSendReqVO reqVO = new AuthSmsSendReqVO(mobile, scene);
        // mock ????????????????????????
        AdminUserDO user = randomPojo(AdminUserDO.class);
        when(userService.getUserByMobile(eq(mobile))).thenReturn(user);

        // ??????
        authService.sendSmsCode(reqVO);
        // ??????
        verify(smsCodeApi).sendSmsCode(argThat(sendReqDTO -> {
            assertEquals(mobile, sendReqDTO.getMobile());
            assertEquals(scene, sendReqDTO.getScene());
            return true;
        }));
    }

    @Test
    public void testSmsLogin_success() {
        // ????????????
        String mobile = randomString();
        String scene = randomString();
        AuthSmsLoginReqVO reqVO = new AuthSmsLoginReqVO(mobile, scene);
        // mock ????????????????????????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setId(1L));
        when(userService.getUserByMobile(eq(mobile))).thenReturn(user);
        // mock ????????????????????? Redis
        OAuth2AccessTokenDO accessTokenDO = randomPojo(OAuth2AccessTokenDO.class, o -> o.setUserId(1L)
                .setUserType(UserTypeEnum.ADMIN.getValue()));
        when(oauth2TokenService.createAccessToken(eq(1L), eq(UserTypeEnum.ADMIN.getValue()), eq("default"), isNull()))
                .thenReturn(accessTokenDO);

        // ??????????????????
        AuthLoginRespVO loginRespVO = authService.smsLogin(reqVO);
        assertPojoEquals(accessTokenDO, loginRespVO);
        // ????????????
        verify(loginLogService).createLoginLog(
                argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_MOBILE.getType())
                        && o.getResult().equals(LoginResultEnum.SUCCESS.getResult())
                        && o.getUserId().equals(user.getId()))
        );
    }

    @Test
    public void testSocialLogin_success() {
        // ????????????
        AuthSocialLoginReqVO reqVO = randomPojo(AuthSocialLoginReqVO.class);
        // mock ?????????????????????????????????
        Long userId = 1L;
        when(socialUserService.getBindUserId(eq(UserTypeEnum.ADMIN.getValue()), eq(reqVO.getType()),
                eq(reqVO.getCode()), eq(reqVO.getState()))).thenReturn(userId);
        // mock????????????
        AdminUserDO user = randomPojo(AdminUserDO.class, o -> o.setId(userId));
        when(userService.getUser(eq(userId))).thenReturn(user);
        // mock ????????????????????? Redis
        OAuth2AccessTokenDO accessTokenDO = randomPojo(OAuth2AccessTokenDO.class, o -> o.setUserId(1L)
                .setUserType(UserTypeEnum.ADMIN.getValue()));
        when(oauth2TokenService.createAccessToken(eq(1L), eq(UserTypeEnum.ADMIN.getValue()), eq("default"), isNull()))
                .thenReturn(accessTokenDO);

        // ??????????????????
        AuthLoginRespVO loginRespVO = authService.socialLogin(reqVO);
        assertPojoEquals(accessTokenDO, loginRespVO);
        // ????????????
        verify(loginLogService).createLoginLog(
                argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_SOCIAL.getType())
                        && o.getResult().equals(LoginResultEnum.SUCCESS.getResult())
                        && o.getUserId().equals(user.getId()))
        );
    }

    @Test
    public void testValidateCaptcha_successWithEnable() {
        // ????????????
        AuthLoginReqVO reqVO = randomPojo(AuthLoginReqVO.class);

        // mock ???????????????
        ReflectUtil.setFieldValue(authService, "captchaEnable", true);
        // mock ????????????
        when(captchaService.verification(argThat(captchaVO -> {
            assertEquals(reqVO.getCaptchaVerification(), captchaVO.getCaptchaVerification());
            return true;
        }))).thenReturn(ResponseModel.success());

        // ?????????????????????
        authService.validateCaptcha(reqVO);
    }

    @Test
    public void testValidateCaptcha_successWithDisable() {
        // ????????????
        AuthLoginReqVO reqVO = randomPojo(AuthLoginReqVO.class);

        // mock ???????????????
        ReflectUtil.setFieldValue(authService, "captchaEnable", false);

        // ?????????????????????
        authService.validateCaptcha(reqVO);
    }

    @Test
    public void testValidateCaptcha_constraintViolationException() {
        // ????????????
        AuthLoginReqVO reqVO = randomPojo(AuthLoginReqVO.class).setCaptchaVerification(null);

        // mock ???????????????
        ReflectUtil.setFieldValue(authService, "captchaEnable", true);

        // ????????????????????????
        assertThrows(ConstraintViolationException.class, () -> authService.validateCaptcha(reqVO),
                "?????????????????????");
    }


    @Test
    public void testCaptcha_fail() {
        // ????????????
        AuthLoginReqVO reqVO = randomPojo(AuthLoginReqVO.class);

        // mock ???????????????
        ReflectUtil.setFieldValue(authService, "captchaEnable", true);
        // mock ????????????
        when(captchaService.verification(argThat(captchaVO -> {
            assertEquals(reqVO.getCaptchaVerification(), captchaVO.getCaptchaVerification());
            return true;
        }))).thenReturn(ResponseModel.errorMsg("????????????"));

        // ??????, ???????????????
        assertServiceException(() -> authService.validateCaptcha(reqVO), AUTH_LOGIN_CAPTCHA_CODE_ERROR, "????????????");
        // ??????????????????
        verify(loginLogService).createLoginLog(
            argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGIN_USERNAME.getType())
                    && o.getResult().equals(LoginResultEnum.CAPTCHA_CODE_ERROR.getResult()))
        );
    }

    @Test
    public void testRefreshToken() {
        // ????????????
        String refreshToken = randomString();
        // mock ??????
        OAuth2AccessTokenDO accessTokenDO = randomPojo(OAuth2AccessTokenDO.class);
        when(oauth2TokenService.refreshAccessToken(eq(refreshToken), eq("default")))
                .thenReturn(accessTokenDO);

        // ??????
        AuthLoginRespVO loginRespVO = authService.refreshToken(refreshToken);
        // ??????
        assertPojoEquals(accessTokenDO, loginRespVO);
    }

    @Test
    public void testLogout_success() {
        // ????????????
        String token = randomString();
        // mock
        OAuth2AccessTokenDO accessTokenDO = randomPojo(OAuth2AccessTokenDO.class, o -> o.setUserId(1L)
                .setUserType(UserTypeEnum.ADMIN.getValue()));
        when(oauth2TokenService.removeAccessToken(eq(token))).thenReturn(accessTokenDO);

        // ??????
        authService.logout(token, LoginLogTypeEnum.LOGOUT_SELF.getType());
        // ??????????????????
        verify(loginLogService).createLoginLog(argThat(o -> o.getLogType().equals(LoginLogTypeEnum.LOGOUT_SELF.getType())
                    && o.getResult().equals(LoginResultEnum.SUCCESS.getResult()))
        );
        // ??????????????????

    }

    @Test
    public void testLogout_fail() {
        // ????????????
        String token = randomString();

        // ??????
        authService.logout(token, LoginLogTypeEnum.LOGOUT_SELF.getType());
        // ??????????????????
        verify(loginLogService, never()).createLoginLog(any());
    }

}
