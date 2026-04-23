class UserRegistrationsController < ApplicationController
  def new
    @user_registration = UserRegistration.new
  end

  def create
    @user_registration = UserRegistration.new(user_registration_params)

    if @user_registration.valid?
      UserMailer.signup_requested(@user_registration).deliver_now
      redirect_to user_registrations_complete_path, notice: "メールを確認しよう"
    else
      render :new
    end
  end

  private

  def user_registration_params
    params.expect(user_registration: %i[email file])
  end
end
