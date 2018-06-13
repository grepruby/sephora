const Users = () => import('../../../modules/users/Users')

const users = {
  path: '/',
  name: 'Users',
  component: Users
}

const User = () => import('../../../modules/users/User')

const user = {
  path: '/users/:id',
  name: 'User',
  component: User
}

export {users, user}
