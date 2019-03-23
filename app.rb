require 'pry'
require 'sinatra'
require_relative 'lib/nazuna_async'

post '/notify' do
  begin
    message_sid = Nazuna.notify

  rescue StandardError => error
    return { status: 500, message: error.message }.to_json

  end

  { status: 200, message: 'Success!. Message SID ' + message_sid }.to_json
end
