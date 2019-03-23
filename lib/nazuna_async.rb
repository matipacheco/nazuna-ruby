require 'sidekiq'
require_relative 'nazuna'

# Class that asynchronously uses Nazuna.
# Made this way in case Twilio services are down.
class NazunaAsync
  include Sidekiq::Worker

  def perform
    Nazuna.notify
  end
end
