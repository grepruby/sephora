<template>
  <div>
    <div class="user-detail">
      <div v-if = "loading">
        loading...
      </div>
      <div v-else>
        <div v-if="user">
          <div class="row">
            <div class="col-md-12 user">
              <p class="col-md-3"><b>Id :</b></p>
              <p class="col-md-9">{{user.id}} </p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-3"><b>User Email :</b></p>
              <p class="col-md-9">{{user.email}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-3"><b>First Name :</b></p>
              <p class="col-md-9">{{user.first_name}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-3"><b>Last Name :</b></p>
              <p class="col-md-9">{{user.last_name}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-3"><b>Loyalty Level :</b></p>
              <p class="col-md-9">{{user.loyalty_level}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-3"><b>Nationality :</b></p>
              <p class="col-md-9">{{user.country_details && user.country_details.demonym}}</p>
            </div>
          </div>
        </div>
        <div v-else>
          No User Found
        </div>
      </div>  
    </div>
    </br>
    <router-link to="/" class="btn btn-dark">
       <span> &#8592; </span>Go Back
    </router-link>
  </div>
</template>
<script>
  export default {
    name: 'Details',
    props: {
      user: Object,
      loading: Boolean
    }
  }
</script>

<style type="text/css" scoped>
  .user-detail {
    background: #fefefe;
    border: 1px #eeeeee solid;
    padding: 15px;000
    border-radius: 5px;
    margin-top: 15px;
    box-shadow: 0px 10px 25px #dcdcdc;
  }
  .user-detail p {
    margin: 0;
    padding: 10px 0 0 0;
  }
  button {
    background: inherit;
    border: 1px solid gray;
    border-radius: 4px;
    padding: 5px 10px;
    margin-top: 15px;
  }
  .user {
    display: inherit;
    border-bottom: 2px solid #dcdcdc;
    padding-bottom: 10px;
  }
  header {
    background: #fff;
    display: inline-block;
    width: 100%;
  }
</style>
