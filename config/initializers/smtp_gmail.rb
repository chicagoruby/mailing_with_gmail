require "smtp_tls"

ActionMailer::Base.smtp_settings = {
  :tls            => true,
  :address        => "smtp.gmail.com",
  :port           => "587",
  :domain         => "reactioncontrol.com",
  :authentication => :plain,
  :user_name      => "testing@reactioncontrol.com",
  :password       => "password4testing"
}