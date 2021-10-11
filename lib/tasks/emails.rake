namespace :emails do
  desc "Sends daily emails to scheduled users"
  task :send => :environment do
    # User.all.each do |user|
    #   # This is where to decide whether to send to any given individual user
    # end
    UserMailer.send_email().deliver_now
  end
end