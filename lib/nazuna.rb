require 'sidekiq'

# require 'java'
# require 'path/to/jar/file'

# Redis should be running, so....
#     redis-server
# On the nazuna_ruby directory run:
#     bundle exec sidekiq -r ./lib/nazuna.rb

class Nazuna
  include Sidekiq::Worker

  def perform
    puts "Holi!"
    # Java::Nazuna.spy()
  end
end