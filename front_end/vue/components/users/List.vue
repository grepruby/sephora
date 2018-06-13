<template>
  <div>
    <table class="table table-striped table-bordered custom-table">
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
          <td>{{user.attributes.country_details && user.attributes.country_details.demonym}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
  export default {
    name: 'List',
    props: {
      users: Array
    }
  }
</script>

<style type="text/css" scoped>
  .custom-table tbody tr:nth-child(odd){
    background-color: #ddd;
  }
  .custom-table tbody tr:nth-child(even){
    background-color: #fff;
  }
  .custom-table thead {
    background: #343a40;
    color: #fff;
  }
  .custom-table tr, td {
    overflow: hidden;
    width: 300px;
  }
</style>
