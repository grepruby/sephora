import Vue from 'vue/dist/vue.esm'
import Router from 'vue-router'
import {users, user} from './routes/users'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [users, user]
})
