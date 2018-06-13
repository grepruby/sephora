<template>
  <h3>
    <slot />
  </h3>
</template>

<script>
  export default {
    name: 'Heading'
  }
</script>

<style type="text/css" scoped>
  h3 {
    padding-top: 10px;
    padding-bottom: 10px;
  }
</style>