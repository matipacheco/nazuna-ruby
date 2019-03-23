require 'json'
require 'sinatra'
require_relative 'lib/nazuna'

post '/' do
  begin
    if params[:anybody_there]
      Nazuna.new.notify
    end

  rescue StandardError => error
    return { status: 500, message: error.message }.to_json

  end

  { status: 200, message: 'Job done!' }.to_json
end
