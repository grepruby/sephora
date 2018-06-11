import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'
import App from '../vue/App'
import router from '../vue/router'
import store from '../vue/store'

Vue.use(VueRouter)

new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})
