require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
# form[action="/signup"]
  test "invalid signup information" do
  	get signup_path
  	assert_no_difference "User.count"do
  	post signup_path, params:{ user:{name: "", 
  									email: "user@invalid",
  									password:             "foo",
									paasword_confirmation:"bar"	} }
  	end
    follow_redirect!
  	assert_template 'users/new'
     assert_not flash.alert
  #	assert_select 'div#CSS id for error explanation'
  # 	assert_select 'div.CSS class for field with error'
  end
end
