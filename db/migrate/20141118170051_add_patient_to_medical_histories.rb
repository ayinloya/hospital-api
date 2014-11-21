class AddPatientToMedicalHistories < ActiveRecord::Migration
  def change
    add_reference :medical_histories, :patient, index: true
  end
end
