require 'date'
require 'twilio-ruby'

# Class that sends Whatsapp messages using Twilio.
class Nazuna
  def self.notify
    begin
      account_sid = ENV['TWILLIO_ACCOUNT_SID']
      auth_token  = ENV['TWILLIO_AUTH_TOKEN']
      client      = Twilio::REST::Client.new(account_sid, auth_token)

      client.messages.create(
        body: 'Your ' + '🦅' + ' code is ' + Time.now.strftime('%H:%M'),
        from: 'whatsapp:' + ENV['TWILIO_PHONE_NUMBER'],
        to:   'whatsapp:' + ENV['MY_PHONE_NUMBER']
      ).sid

    rescue
      raise 'Twilio was unable to send the message... stupid Twilio'

    end
  end
end
