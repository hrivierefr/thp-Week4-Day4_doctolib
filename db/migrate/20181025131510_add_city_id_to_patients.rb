class AddCityIdToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :city_id, :integer
  end
end
