class AddHospitalToMedicalHistory < ActiveRecord::Migration
  def change
    add_reference :medical_histories, :hospital, index: true
  end
end