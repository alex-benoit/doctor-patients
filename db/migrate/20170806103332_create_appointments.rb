class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :patient, index: true
      t.references :doctor, index: true
      t.timestamps null: false
    end
  end
end
