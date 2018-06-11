// Async module import
const User = () => import('../../../modules/users/User')

export default {
  path: '/users/:id',
  name: 'User',
  component: User
}
