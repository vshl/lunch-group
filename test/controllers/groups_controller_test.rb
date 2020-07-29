require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  test 'should create groups' do
    assert_difference ->{ Group.count }, 4 do
      post create_groups_url, params: { group: { } }
    end
    assert_redirected_to controller: :groups, action: :index
  end
end
