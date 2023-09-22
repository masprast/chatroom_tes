require "test_helper"

class PesanControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pesan_create_url
    assert_response :success
  end

  test "should get p_param" do
    get pesan_p_param_url
    assert_response :success
  end
end
