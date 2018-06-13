<template>
  <section>
    <main>
      <Heading>User Details</Heading>
      <Details :user="user" />
    </main>
  </section>
</template>

<script>
  import Details from '../../components/users/Details'
  import Heading from '../../components/Heading'
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
      Details,
      Heading
    }
  }
</script>
