class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :nssNumber
      t.integer :age
      t.text :address
      t.string :image

      t.timestamps
    end
  end
end
