<template>
  <section>
    <main>
      <Heading>Users List</Heading>
      <List :users="users"/>
      <Pagination :total="Math.ceil(total / 10)" :current="current" :action="onPageChange" />
    </main>
  </section>
</template>

<script>
  import List from '../../components/users/List'
  import Pagination from '../../components/Pagination'
  import Heading from '../../components/Heading'

  const RECORD_COUNT = 10

  export default {
    name: 'Users',
    data () {
      return {
        current: 1
      }
    },
    computed: {
      users () { return this.$store.state.users.all || [] },
      total () { return this.$store.state.users.count || 0 }
    },
    async mounted () {
      await this.$store.dispatch('users/all', {page: this.current, count: RECORD_COUNT})
    },
    methods: {
      async onPageChange (page) {
        this.current = page
        await this.$store.dispatch('users/all', {page, count: RECORD_COUNT})
      }
    },
    components: {
      List,
      Pagination,
      Heading
    }
  }
</script>