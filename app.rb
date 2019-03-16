require 'json'
require 'sinatra'
require_relative 'lib/nazuna'

get '/' do
  begin
    Nazuna.perform_async
  rescue StandardError => error
    return { status: 500, message: error.message }.to_json
  end

  { status: 200, message: 'Job done!' }.to_json
end
