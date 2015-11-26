require 'test_helper'

class WineControllerTest < ActionController::TestCase

  def setup
    @controller = WineController.new
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
