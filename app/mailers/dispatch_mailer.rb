class DispatchMailer < ActionMailer::Base
  default from: "techcentral.support@henryschein.com"

  def welcome_email(user)
    @user = user
    @url = "http://morning-retreat-1875.herokuapp.com"
    email_with_name = "#{user.name} <#{user.email}>"
    mail(to: email_with_name, subject: "Welcome to DisptachLink!")
  end

  def request_email(request, hub_group)
    @request = request
    @url = "http://morning-retreat-1875.herokuapp.com"
    mail(to: hub_group, subject: "#{request.cust_name} - Onsite Service Request")
  end
end
