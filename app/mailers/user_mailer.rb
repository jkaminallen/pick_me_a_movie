class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Pick Me a Movie')
  end
end
