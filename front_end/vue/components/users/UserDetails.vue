<template>
  <div class="container">
    <h2>User Detail</h2>
    <div class="demo">
      <router-link to="/">
        <button> <span> &#8592; </span>Go Back </button>
      </router-link>
      <div class="user-detail">
        <div v-if="user">
          <div class="row">
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>Id :-</b> </p>
              <p class="col-md-6 col-lg-6">{{user.id}} </p>
            </div>
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>User Email :- </b></p>
              <p class="col-md-6 col-lg-6">{{user.email}}</p>
            </div>
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>First Name :- </b></p>
              <p class="col-md-6 col-lg-6">{{user.first_name}}</p>
            </div>
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>Last Name :- </b></p>
              <p class="col-md-6 col-lg-6">{{user.last_name}}</p>
            </div>
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>Loyalty Level :- </b></p>
              <p class="col-md-6 col-lg-6">{{user.loyalty_level}}</p>
            </div>
            <div class="col-md-12 col-lg-12 user">
              <p class="col-md-6 col-lg-6"><b>Nationality :- </b></p>
              <p class="col-md-6 col-lg-6">{{user.country_detail.demonym}}</p>
            </div>
          </div>
        </div>
        <div v-else>
          No User Found
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    name: 'UsersList',
    props: {
      user: Object
    }
  }
</script>

<style type="text/css">
  .demo {
    width: 50%;
    margin: 0 auto;
  }
  .user-detail p {
    margin: 0;
    padding: 10px 0 0 0;
  }
  .demo button {
    background: inherit;
    border: 1px solid gray;
    border-radius: 4px;
    padding: 5px 10px;
  }
  .user {
    display: inherit;
    border-bottom: 2px solid #000;
    padding-bottom: 10px;
  }
</style>
