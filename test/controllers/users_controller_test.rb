require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user =user(:michael)
    @other_user(:archer)
  end
  test "should get new" do
    get users_new_url
    assert_response :success
  end

end
