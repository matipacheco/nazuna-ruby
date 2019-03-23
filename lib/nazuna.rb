require 'pry'
require 'date'
require 'twilio-ruby'

class Nazuna
  def initialize
    @account_sid = ENV['TWILLIO_ACCOUNT_SID']
    @auth_token  = ENV['TWILLIO_AUTH_TOKEN']
    @client      = Twilio::REST::Client.new(@account_sid, @auth_token)
  end

  def notify
    begin
      binding.pry
      m=@client.messages.create(
        body: "The bird is in the nest! \n *" + Time.now.strftime('%H:%m') + "*",
        from: 'whatsapp:' + ENV['TWILIO_PHONE_NUMBER'],
        to:   'whatsapp:' + ENV['MY_PHONE_NUMBER']
      )

    rescue
      raise 'Twilio was unable to send the message... stupid Twilio'

    end
  end
end
