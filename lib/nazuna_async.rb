require 'sidekiq'
require_relative 'nazuna'

class NazunaAsync
  include Sidekiq::Worker

  def perform
    Nazuna.new.notify
  end
end
