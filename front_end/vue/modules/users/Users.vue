<template>
  <section>
    <main>
      <UsersList :users="users"/>
    </main>
  </section>
</template>

<script>
  import UsersList from '../../components/users/UsersList'
  export default {
    name: 'Users',
    computed: {
      users () { return this.$store.state.users.all || [] }
    },
    async mounted () {
      await this.$store.dispatch('users/all')
    },
    components: {
      UsersList
    }
  }
</script>
<style lang="scss">
  @import 'bootstrap/dist/css/bootstrap.css';
</style>