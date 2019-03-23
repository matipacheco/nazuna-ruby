require 'date'
require 'twilio-ruby'

# Class that sends Whatsapp messages using Twilio.
class Nazuna
  def self.notify
    begin
      client = Twilio::REST::Client.new(ENV['TWILLIO_ACCOUNT_SID'], ENV['TWILLIO_AUTH_TOKEN'])
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
