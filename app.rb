require 'pry'
require 'json'
require 'sinatra'
require_relative 'lib/nazuna_async'

post '/' do
  begin
    params = JSON.parse(request.body.read)

    if params["anybody_there"]
      message_sid = NazunaAsync.perform_async
    else
        return { status: 404, message: 'Forbidden' }.to_json
    end

  rescue StandardError => error
    return { status: 500, message: error.message }.to_json

  end

  { status: 200, message: 'Success!. Message SID ' + message_sid }.to_json
end
