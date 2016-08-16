require 'test_helper'

class PollFlowTest < ActionDispatch::IntegrationTest
  test "can see navbar on home page" do
    get "/"
    assert_select ".navbar-brand", "Make Some Polls"
  end
end
