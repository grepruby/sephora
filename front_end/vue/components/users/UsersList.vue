<template>
  <div class="container">
    <h2>User List</h2>
    <table class="table custom-table">
      <thead>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Loyalty Level</th>

          <th>Nationality</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="user in users">
          <td>{{user.attributes.id}}</td>
          <td>
            <router-link :to="`users/${user.id}`">
              {{user.attributes.first_name}}
            </router-link>
          </td>
          <td>{{user.attributes.last_name}}</td>
          <td>{{user.attributes.email}}</td>
          <td>{{user.attributes.loyalty_level}}</td>
          <td>{{user.attributes.country}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
  export default {
    name: 'UsersList',
    props: {
      users: Array
    }
  }
</script>

<style type="text/css">
  .custom-table tbody tr:nth-child(odd){
    background-color: #ddd;
  }
  .custom-table tbody tr:nth-child(even){
    background-color: #fff;
  }
  .custom-table thead {
    background: red;
    color: #fff;
  }
</style>


