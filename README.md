# README
## Specifications

* Ruby version - 2.5.1

* System dependencies
    * postgress 9.6
    * rails 5.2

* Setup Instructions

    * Clone the repository

    * Install bundler and Run bundle install
        > gem install bundler

        > bundle install

    Database setup

    * rake db:create
    * rake loyalty:db:create
    * rake db:migrate
    * rake loyalty:migrate
    * rake db:seed

    Start Server

     * Start rails server
        >rails s
     * Start webpack server
        > ./bin/webpack-dev-server



 ## Enhancement
    * Migrations for loyalty engine should support versions as well
    * Token based authentication for session management
    * Background jobs to fetch data from third-party APIs like rest country


 ## Heroku App

    https://loyaltysep.herokuapp.com
