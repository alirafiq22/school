require 'test_helper'

class StudentMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_master = student_masters(:one)
  end

  test "should get index" do
    get student_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_student_master_url
    assert_response :success
  end

  test "should create student_master" do
    assert_difference('StudentMaster.count') do
      post student_masters_url, params: { student_master: {  } }
    end

    assert_redirected_to student_master_url(StudentMaster.last)
  end

  test "should show student_master" do
    get student_master_url(@student_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_master_url(@student_master)
    assert_response :success
  end

  test "should update student_master" do
    patch student_master_url(@student_master), params: { student_master: {  } }
    assert_redirected_to student_master_url(@student_master)
  end

  test "should destroy student_master" do
    assert_difference('StudentMaster.count', -1) do
      delete student_master_url(@student_master)
    end

    assert_redirected_to student_masters_url
  end
end
