<template>
  <section>
    <main>
      <Heading>Users List</Heading>
      <List :users="users"/>
      <Pagination :total="Math.ceil(totalCount / 10)" :current="current" :action="onPageChange" />
    </main>
  </section>
</template>

<script>
  import List from '../../components/users/List'
  import Pagination from '../../components/Pagination'
  import Heading from '../../components/Heading'

  const RECORD_PER_PAGE = 10

  export default {
    name: 'Users',
    data () {
      return {
        current: 1
      }
    },
    computed: {
      users () { return this.$store.state.users.all || [] },
      totalCount () { return this.$store.state.users.totalCount || 0 }
    },
    async mounted () {
      await this.$store.dispatch('users/all', {page: this.current, perPage: RECORD_PER_PAGE})
    },
    methods: {
      async onPageChange (page) {
        this.current = page
        await this.$store.dispatch('users/all', {page, perPage: RECORD_PER_PAGE})
      }
    },
    components: {
      List,
      Pagination,
      Heading
    }
  }
</script>
