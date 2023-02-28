<template>
  <div>
    <svg-icon icon-class="question" @click="goto"/>
  </div>
</template>

<script>
export default {
  name: 'GaiaDoc',
  data() {
    return {
      url: 'https://doc.iocoder.cn/'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>
