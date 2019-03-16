require 'sidekiq'
require ENV['NAZUNA_JAR_PATH']

# Class that call the Nazuna Java class,
# and enqueues its work using Sidekiq.
class Nazuna
  include Sidekiq::Worker

  def perform
    puts Java::Nazuna.spy
  end
end
