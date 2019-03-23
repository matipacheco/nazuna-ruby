# Nazuna, the nanny spy

~This project was created to try out JRuby, but things change...~

## Setup

* Ruby version:

        2.5.1

* System dependencies:
        
        rvm gemset create nazuna
        rvm gemset use nazuna
        
        bundle install

* Run the API

        ruby app.rb

* Start Sidekiq workers

Make sure you've got Redis running on background

        redis-server
        
Now start the workers

        bundle exec sidekiq -r ./lib/nazuna_async.rb
