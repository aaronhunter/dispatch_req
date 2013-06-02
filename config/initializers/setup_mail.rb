ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'henryschein.com',
  user_name:            'scheintechcentral@gmail.com',
  password:             'RemoteSupport2013!',
  authentication:       'plain',
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"