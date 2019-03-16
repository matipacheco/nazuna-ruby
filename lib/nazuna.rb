require 'sidekiq'

# require 'java'
# require 'path/to/jar/file'

# run with bundle exec sidekiq -r ./lib/nazuna.rb on the nazuna_ruby directory
class Nazuna
  include Sidekiq::Worker

  def perform
    puts "Holi!"
    # Java::Nazuna.spy()
  end
end