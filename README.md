# README
## Specifications

* Ruby version - 2.5.1

* System dependencies
    * postgress 9.6
    * rails 5.2

* Setup Instruction

    * Clone both app in same directory
    * Uncomment gem

        >gem 'loyalty', path: '../loyalty'

        and comment previous line

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
     * Start webpack server in new terminal tab
        > ./bin/webpack-dev-server



 ## Enhancement

  Version migration are not supported for plugging we can enhance that as well.

  ## Heroku App

    https://loyaltysep.herokuapp.com

