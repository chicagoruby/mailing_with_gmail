require "smtp_tls"

ActionMailer::Base.smtp_settings = {
  :tls            => true,
  :address        => "smtp.gmail.com",
  :port           => "587",
  :domain         => APP_CONFIG['gmail']['domain'],
  :authentication => :plain,
  :user_name      => APP_CONFIG['gmail']['user_name'],
  :password       => APP_CONFIG['gmail']['password']
}