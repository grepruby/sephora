<template>
  <div class="container">
    <div class="demo thumbnail">
      <div class="user-detail">
        <div v-if="user">
          <div class="row">
            <div class="col-md-12 user">
              <p class="col-md-6"><b>Id :-</b> </p>
              <p class="col-md-6">{{user.id}} </p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-6"><b>User Email :- </b></p>
              <p class="col-md-6">{{user.email}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-6"><b>First Name :- </b></p>
              <p class="col-md-6">{{user.first_name}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-6"><b>Last Name :- </b></p>
              <p class="col-md-6">{{user.last_name}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-6"><b>Loyalty Level :- </b></p>
              <p class="col-md-6">{{user.loyalty_level}}</p>
            </div>
            <div class="col-md-12  user">
              <p class="col-md-6"><b>Nationality :- </b></p>
              <p class="col-md-6">{{user.country_details.demonym}}</p>
            </div>
          </div>
        </div>
        <div v-else>
          No User Found
        </div>
      </div>
    </div>
    <router-link to="/">
      <button class="btn btn-primary"> <span> &#8592; </span>Go Back </button>
    </router-link>
  </div>
</template>
<script>
  export default {
    name: 'Details',
    props: {
      user: Object
    }
  }
</script>

<style lang="scss">
  @import 'bootstrap/dist/css/bootstrap.css';
</style>

<style type="text/css">
  .demo {
    width: 100%;
    margin: 0 auto;

  }

  .user-detail {
    background: #fefefe;
    border: 1px #eeeeee solid;
    display: inline-block;
    padding: 15px;000
    border-radius: 5px;
    width: 50%;
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
