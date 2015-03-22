require 'test_helper'

class QyServicesControllerTest < ActionController::TestCase
  test "should get receive_ticket" do
    get :receive_ticket
    assert_response :success
  end

end
