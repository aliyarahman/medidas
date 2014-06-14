require 'test_helper'

class HoursEntriesControllerTest < ActionController::TestCase
  setup do
    @hours_entry = hours_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_entry" do
    assert_difference('HoursEntry.count') do
      post :create, hours_entry: { evidence: @hours_entry.evidence, num_hours: @hours_entry.num_hours, shift_end: @hours_entry.shift_end, shift_start: @hours_entry.shift_start, submitted: @hours_entry.submitted, user_id: @hours_entry.user_id }
    end

    assert_redirected_to hours_entry_path(assigns(:hours_entry))
  end

  test "should show hours_entry" do
    get :show, id: @hours_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hours_entry
    assert_response :success
  end

  test "should update hours_entry" do
    patch :update, id: @hours_entry, hours_entry: { evidence: @hours_entry.evidence, num_hours: @hours_entry.num_hours, shift_end: @hours_entry.shift_end, shift_start: @hours_entry.shift_start, submitted: @hours_entry.submitted, user_id: @hours_entry.user_id }
    assert_redirected_to hours_entry_path(assigns(:hours_entry))
  end

  test "should destroy hours_entry" do
    assert_difference('HoursEntry.count', -1) do
      delete :destroy, id: @hours_entry
    end

    assert_redirected_to hours_entries_path
  end
end
