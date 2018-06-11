export default {
  namespaced: true,

  state: {
    all: null
  },

  getters: {
    getById: (state) => (id) => (state.all ? state.all.find(o => o.id === Number(id)) : null)
  },

  mutations: {
    set(state, assets) {
      state.all = assets
    }
  },

  actions: {
    async all({ commit }) {
      try {
        fetch(`/api/v1/users`)
        .then(response => {
          return response.json()
        })
        .then(res => {
          commit('set', res.users)
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
