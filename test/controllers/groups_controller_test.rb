require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
 
      post :create, group: { description: @group.description, name: @group.name }

      post :create, group: { area_id: @group.area_id, average_age: @group.average_age, match_log_id: @group.match_log_id, name: @group.name, pr_text: @group.pr_text, rate: @group.rate, time_id: @group.time_id }
 
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
 
    patch :update, id: @group, group: { description: @group.description, name: @group.name }

    patch :update, id: @group, group: { area_id: @group.area_id, average_age: @group.average_age, match_log_id: @group.match_log_id, name: @group.name, pr_text: @group.pr_text, rate: @group.rate, time_id: @group.time_id }
 
    assert_redirected_to group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end
