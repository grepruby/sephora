<template>
  <div class="container">
    <button :disabled="!(current > 1)" @click="previous()" class="btn btn-primary">Previous</button>
    <button :disabled="!(current < total)" @click="next()" class="btn btn-primary">Next</button>
  </div>
</template>
<script>
  export default {
    name: 'Pagination',
    props: {
      current: Number,
      total: Number,
      action: Function
    },
    methods: {
      previous () {
        const previous = this.current - 1
        if (previous > 0) {
          this.action(previous)
        }
      },
      next () {
        const next = this.current + 1
        if (next <= this.total) {
          this.action(next)
        }
      }
    }
  }
</script>
