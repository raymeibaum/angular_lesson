class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :user, foreign_key: true
      t.string :reason
      t.date :date

      t.timestamps
    end
  end
end
