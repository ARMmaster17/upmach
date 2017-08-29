require 'test_helper'

class PartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part = parts(:one)
  end

  test "should get index" do
    get machine_parts_url(@part.machine)
    assert_response :success
  end

  test "should get new" do
    get new_machine_part_url(@part.machine)
    assert_response :success
  end

  test "should create part" do
    assert_difference('Part.count') do
      post machine_parts_url(@part.machine), params: { part: { machine_id: @part.machine_id, manufacturer: @part.manufacturer, model: @part.model, name: @part.name, price: @part.price } }
    end

    assert_redirected_to machine_part_url(@part.machine, Part.last)
  end

  test "should show part" do
    get machine_part_url(@part.machine, @part)
    assert_response :success
  end

  test "should get edit" do
    get edit_machine_part_url(@part.machine, @part)
    assert_response :success
  end

  test "should update part" do
    patch machine_part_url(@part.machine, @part), params: { part: { machine_id: @part.machine_id, manufacturer: @part.manufacturer, model: @part.model, name: @part.name, price: @part.price } }
    assert_redirected_to machine_part_url(@part.machine, @part)
  end

  test "should destroy part" do
    assert_difference('Part.count', -1) do
      delete machine_part_url(@part.machine, @part)
    end

    assert_redirected_to machine_parts_url(@part.machine)
  end
end
