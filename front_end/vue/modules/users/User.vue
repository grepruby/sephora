<template>
  <section>
    <main>
      <UserDetails :user="user" />
    </main>
  </section>
</template>

<script>
  import UserDetails from '../../components/users/UserDetails'
  export default {
    name: 'User',
    computed: {
      id () { return this.$route.params.id },
      user () { return this.$store.state.users.user }
    },
    async mounted () {
      await this.$store.dispatch('users/getUserById', {id: this.id})
    },
    components: {
      UserDetails
    }
  }
</script>

<style lang="scss">
  @import 'bootstrap/dist/css/bootstrap.css';
</style>
