class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user, :owner_id
      t.integer :user, :reserved_user_id
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
