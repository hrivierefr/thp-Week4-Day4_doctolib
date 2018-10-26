class Doctor < ApplicationRecord
	has_many :appointments
	has_and_belongs_to_many :specialties
	has_many :patients, through: :appointments
	has_many :city, through: :appointments
end
