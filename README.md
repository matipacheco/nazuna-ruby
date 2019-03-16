# Nazuna, the nanny spy

This project was created to try out JRuby

## Setup

* JRuby version:

        9.2.0.0

* System dependencies:
        
        rvm use jruby
        rvm gemset create nazuna
        rvm gemset use nazuna
        
        bundle install

* Run the API

        ruby nazuna.rb

* Start Sidekiq workers

Make sure you've got Redis running on background

        redis-server
        
Now start the workers

        bundle exec sidekiq -r ./lib/nazuna.rb        