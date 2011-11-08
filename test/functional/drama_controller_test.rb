require 'test_helper'

class DramaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
