require_relative '../config/environment'
require 'rails/test_help'

ENV['RAILS_ENV'] ||= 'test'

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper
  
end