class UserRegistrationsController < ApplicationController
  def new
    @user_registration = UserRegistration.new
  end

  def create
    @user_registration = UserRegistration.new(user_registration_params)

    if @user_registration.valid?
      redirect_to user_registration_complete_path, notice: "メールを確認しよう"
    else
      render :new
    end
  end

  private

  def user_registration_params
    params.expect(user_registration: %i[email])
  end
end
