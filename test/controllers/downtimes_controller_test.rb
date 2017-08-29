require 'test_helper'

class DowntimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @downtime = downtimes(:one)
  end

  test "should get index" do
    get machine_downtimes_url(@downtime.machine)
    assert_response :success
  end

  test "should get new" do
    get new_machine_downtime_url(@downtime.machine)
    assert_response :success
  end

  test "should create downtime" do
    assert_difference('Downtime.count') do
      post machine_downtimes_url(@downtime.machine), params: { downtime: { end_time: @downtime.end_time, machine_id: @downtime.machine_id, start_time: @downtime.start_time } }
    end

    assert_redirected_to machine_downtime_url(@downtime.machine, Downtime.last)
  end

  test "should show downtime" do
    get machine_downtime_url(@downtime.machine, @downtime)
    assert_response :success
  end

  test "should get edit" do
    get edit_machine_downtime_url(@downtime.machine, @downtime)
    assert_response :success
  end

  test "should update downtime" do
    patch machine_downtime_url(@downtime.machine, @downtime), params: { downtime: { end_time: @downtime.end_time, machine_id: @downtime.machine_id, start_time: @downtime.start_time } }
    assert_redirected_to machine_downtime_url(@downtime.machine, @downtime)
  end

  test "should destroy downtime" do
    assert_difference('Downtime.count', -1) do
      delete machine_downtime_url(@downtime.machine, @downtime)
    end

    assert_redirected_to machine_downtimes_url(@downtime.machine)
  end
end
