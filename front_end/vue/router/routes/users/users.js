// Async module import
const Users = () => import('../../../modules/users/Users')

export default {
  path: '/',
  name: 'Users',
  component: Users
}
