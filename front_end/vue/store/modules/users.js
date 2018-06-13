import baseUrl from '../../utils/baseUrl'

export default {
  namespaced: true,

  state: {
    all: null,
    user: null,
    totalCount: 0,
    loading: true
  },

  mutations: {
    setUsers(state, users) {
      state.all = users
    },
    setTotalCount(state, totalCount) {
      state.totalCount = totalCount
    },
    setUser(state, user) {
      state.user = user
    },
    setLoading(state, loading) {
      state.loading = loading
    }
  },

  actions: {
    async all({ commit }, {page, perPage}) {
      try {
        fetch(`${baseUrl}/users?page=${page}&per_page=${perPage}`)
        .then(response => {
          return response.json()
        })
        .then(res => {
          commit('setUsers', res.data)
          commit('setTotalCount', res.meta.total_count)
        })
        .catch(err => {
          console.log(err)
        })
      } catch (e) {
        throw e
      }
    },
    async getUserById({ commit }, {id}) {
      try {
        commit('setLoading', true)
        fetch(`${baseUrl}/users/${id}`)
        .then(response => {
          return response.json()
        })
        .then(res => {
          commit('setLoading', false)
          commit('setUser', res.data.attributes)
        })
        .catch(err => {
          commit('setLoading', false)
          console.log(err)
        })
      } catch (e) {
        throw e
      }
    }
  }
}
