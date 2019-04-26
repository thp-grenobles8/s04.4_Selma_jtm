class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime   :date
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, intex: true

      t.timestamps
    end
  end
end
