require 'test_helper'

class MedicalHistoriesControllerTest < ActionController::TestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_history" do
    assert_difference('MedicalHistory.count') do
      post :create, medical_history: { bp: @medical_history.bp, diagnosis: @medical_history.diagnosis, drugs: @medical_history.drugs, labTest: @medical_history.labTest, signsymptoms: @medical_history.signsymptoms, temperature: @medical_history.temperature, weight: @medical_history.weight }
    end

    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should show medical_history" do
    get :show, id: @medical_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_history
    assert_response :success
  end

  test "should update medical_history" do
    patch :update, id: @medical_history, medical_history: { bp: @medical_history.bp, diagnosis: @medical_history.diagnosis, drugs: @medical_history.drugs, labTest: @medical_history.labTest, signsymptoms: @medical_history.signsymptoms, temperature: @medical_history.temperature, weight: @medical_history.weight }
    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should destroy medical_history" do
    assert_difference('MedicalHistory.count', -1) do
      delete :destroy, id: @medical_history
    end

    assert_redirected_to medical_histories_path
  end
end
