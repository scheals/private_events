require "test_helper"

class EventInviteControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get event_invite_create_url
    assert_response :success
  end
end
