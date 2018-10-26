class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :specialties do |t|
       t.index [:doctor_id, :specialty_id]
    end
  end
end
