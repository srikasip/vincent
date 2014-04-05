require 'test_helper'

class PatientVaccinesControllerTest < ActionController::TestCase
  setup do
    @patient_vaccine = patient_vaccines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_vaccines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_vaccine" do
    assert_difference('PatientVaccine.count') do
      post :create, patient_vaccine: { patient_id: @patient_vaccine.patient_id, vaccine_id: @patient_vaccine.vaccine_id }
    end

    assert_redirected_to patient_vaccine_path(assigns(:patient_vaccine))
  end

  test "should show patient_vaccine" do
    get :show, id: @patient_vaccine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_vaccine
    assert_response :success
  end

  test "should update patient_vaccine" do
    patch :update, id: @patient_vaccine, patient_vaccine: { patient_id: @patient_vaccine.patient_id, vaccine_id: @patient_vaccine.vaccine_id }
    assert_redirected_to patient_vaccine_path(assigns(:patient_vaccine))
  end

  test "should destroy patient_vaccine" do
    assert_difference('PatientVaccine.count', -1) do
      delete :destroy, id: @patient_vaccine
    end

    assert_redirected_to patient_vaccines_path
  end
end
