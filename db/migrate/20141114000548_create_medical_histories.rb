class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.string :bp
      t.string :temperature
      t.decimal :weight
      t.text :signsymptoms
      t.text :diagnosis
      t.text :drugs
      t.text :labTest

      t.timestamps
    end
  end
end
