class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
      
    end
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.integer :postal_code

      t.timestamps
    end


  end
end
