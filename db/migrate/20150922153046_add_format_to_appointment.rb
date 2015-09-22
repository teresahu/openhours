class AddFormatToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :format, :string
  end
end
