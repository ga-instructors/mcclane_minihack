class SmsController < ApplicationController
  #before_action :authenticate

  def create
    sms          = TwilioIntegration.new
    phone_number = "+1#{params[:phone_number]}"
    message      = params[:message]

    logger.info sms.send(phone_number, message)
    redirect_to "#{sms_path}?phone_number=#{phone_number}&message=#{URI.encode message}"
  end

  def show
    @phone_number = params[:phone_number]
    @message      = URI.decode params[:message]
  end

  def joke
    sms          = TwilioIntegration.new
    phone_number = "+1#{params["phone_number"].to_i}"
    message = "A SQL query goes into a bar, walks up to two tables and asks, 'Can I join you?'"
    logger.info sms.send(phone_number, message)
    redirect_to "#{sms_path}?phone_number=#{phone_number}&message=#{URI.encode message}"
  end

  private

    def authenticate
      unless logged_in?
        redirect_to new_session_path
      end
    end
end