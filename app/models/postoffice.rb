class Postoffice < ActionMailer::Base
  def welcome(name, email)
    @recipients = "matt.polito@gmail.com"
    @from       = "chicagoruby@reactioncontrol.com"
    headers         "Reply-to" => "#{email}"
    @subject    = "ChicagoRuby.org from Gmail"
    @sent_on    = Time.now
    @content_type = "text/html"
    
    body[:name] = name
    body[:email] = email
  end

end
