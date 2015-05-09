class TwilioIntegration
  attr_reader :client, :account

  def initialize
    @client  = TwilioHelper::CLIENT
    @account = @client.account
  end

  def send(phone_number, message)
    @account.messages.create(
      from: TwilioHelper::PHONE,
      to:   phone_number,
      body: message
    )
  end

  def send_mms(phone_number, media_url)
    @account.messages.create(
      from: TwilioHelper::PHONE,
      to:   phone_number,
      body: "picture time!"
      media_url: media_url
    )
  end
end