require "test_helper"

class SaludosControllerTest < ActionDispatch::IntegrationTest
  test "should get hola_mundo" do
    get saludos_hola_mundo_url
    assert_response :success
  end
end
