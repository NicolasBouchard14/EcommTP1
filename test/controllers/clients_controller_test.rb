require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
   get '/'
    assert_response :success
  end

  test "should get edit" do
    get '/clients/1/edit'
    assert_response :success
  end

  test "should get show" do
    get '/clients/1'
    assert_response :success
  end

end
