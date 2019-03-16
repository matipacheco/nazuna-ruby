require 'json'
require 'sinatra'
require_relative 'lib/nazuna'

get '/' do
  begin
    Nazuna.perform_async()

  rescue Exception => exception
    return { status: 500, message: exception.message }.to_json

  ensure
    return { status: 200, message: 'Job done!' }.to_json
  end
end

