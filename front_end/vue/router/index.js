import Vue from 'vue/dist/vue.esm'
import Router from 'vue-router'
import users from './routes/users/users'
import user from './routes/users/user'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [users, user]
})
