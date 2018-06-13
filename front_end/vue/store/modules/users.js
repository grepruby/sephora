import baseUrl from '../../utils/baseUrl'

export default {
  namespaced: true,

  state: {
    all: null,
    user: null,
    count: 0
  },

  mutations: {
    setUsers(state, users) {
      state.all = users
    },
    setCount(state, count) {
      state.count = count
    },
    setUser(state, user) {
      state.user = user
    }
  },

  actions: {
    async all({ commit }, {page, count}) {
      try {
        fetch(`${baseUrl}/users?page=${page}&count=${count}`)
        .then(response => {
          return response.json()
        })
        .then(res => {
          commit('setUsers', res.data)
          commit('setCount', res.meta.count)
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
        fetch(`${baseUrl}/users/${id}`)
        .then(response => {
          return response.json()
        })
        .then(res => {
          commit('setUser', res.data.attributes)
        })
        .catch(err => {
          console.log(err)
        })
      } catch (e) {
        throw e
      }
    }
  }
}
