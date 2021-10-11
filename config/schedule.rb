require 'clockwork'
require 'active_support/time'
require './config/boot'
require './config/environment'

module Clockwork
  every 30.seconds, 'email-job' do
    `rake emails:send`
    # puts 'd'
  end
end