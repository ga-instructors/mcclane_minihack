require 'spec_helper'

describe TwilioIntegration do
  it "is initialized with the necessary environmental variables" do
    expect {TwilioIntegration.new}.not_to raise_error
  end

  it "is initialized with a client and account" do
    tw = TwilioIntegration.new
    
    expect(tw.client).to be_kind_of(Twilio::REST::Client)
    expect(tw.account).to be_kind_of(Twilio::REST::Client::Account)
  end

  describe "#send" do
    it "sends an sms to a given number with a given message" do
      phone_number = "4405434041"
      message      = "Hello world."

      tw = TwilioIntegration.new
      tw.send phone_number, message

      open_last_text_message_for(phone_number)
      expect(current_text_message.body).to eql(message)
    end
  end
end