class UserMailer < ApplicationMailer
  default from: 'danchima98@gmail.com'
  def send_email(user: nil)
    # user.email = "dcnnad@gmail.com"
    subject = "Mail Test"
    # @user = user
    # @events = []
    email_with_name = "'Daniel' <dcnnad@gmail.com>"
    puts "Emailing #{subject} to #{email_with_name}"
    mail(:to => 'dcnnad@gmail.com', :subject => "Mail Test")
  end
end