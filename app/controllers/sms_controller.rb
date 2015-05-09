class SmsController < ApplicationController
  before_action :authenticate

  def create
    sms          = TwilioIntegration.new
    phone_number = "+1#{params[:phone_number]}"
    swansonism   = Swanson.get_ron
    message      = params[:message] + "... Also, Ron Swanson sez: " + swansonism
    # Include extra information here and in sms below

    logger.info sms.send(phone_number, message)
    redirect_to "#{sms_path}?phone_number=#{phone_number}&message=#{URI.encode message}"
  end

  def show
    @phone_number = params[:phone_number]
    @message      = URI.decode params[:message]
  end

  private

    def authenticate
      unless logged_in?
        redirect_to new_session_path
      end
    end
end