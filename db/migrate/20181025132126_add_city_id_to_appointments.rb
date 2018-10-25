class AddCityIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :city_id, :integer
  end
end
