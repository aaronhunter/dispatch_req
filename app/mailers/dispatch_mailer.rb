class DispatchMailer < ActionMailer::Base
  default from: "techcentral.support@henryschein.com"

  def welcome_email(user)
    @user = user
    @url = "http://morning-retreat-1875.herokuapp.com"

    mail(to: "#{user.name} <#{user.email}", subject: "Welcome to DisptachLink!")
  end
end
