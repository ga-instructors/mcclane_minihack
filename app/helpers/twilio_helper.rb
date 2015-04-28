module TwilioHelper
  CLIENT = Twilio::REST::Client.new(
    ENV['TWILIO_ACCT_SID'], 
    ENV['TWILIO_AUTH_TOKEN']
  )

  PHONE = "+1#{ENV['TWILIO_PHONE_NO']}"
end
