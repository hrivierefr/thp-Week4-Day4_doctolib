class AddCityIdToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :city_id, :integer
  end
end
