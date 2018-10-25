# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
	doctor = Doctor.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		post_code: Faker::Address.postcode,
		city_id: Faker::Number.within(City.first.id..City.last.id)
		)
end

5.times do
	patient = Patient.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name
		city_id: Faker::Number.within(City.first.id..City.last.id)
		)
end

5.times do
	appointment = Appointment.create!(
		patient_id: Faker::Number.within(Patient.first.id..Patient.last.id), 
		doctor_id: Faker::Number.within(Doctor.first.id..Doctor.last.id),
		city_id: ,
		date: Faker::Time.between(300.days.ago, Date.today, :day)
		)
end

10.times do
	city = City.create!(
		city_name: Faker::Address.city
		)
end

specialites = ['Allergologie', 'Anesthésie', 'Biologie médicale', 'Chirurgie Maxillo-Faciale', 'Chirurgie Orale', 'Chirurgie Orthopédique et traumatologique', 'Chirurgie Pédiatrique', 'Chirurgie plastique, reconstructrice et esthétique', 'Chirurgie Thoracique et Cardio-Vasculaire', 'Chirurgie Vasculaire','Chirurgie Viscérale et Digestive', 'Dermatologie – Vénérologie', 'Endocrinologie, diabétologie et nutrition', 'Gériatrie','Gynécologie', 'Hématologie','Hépato-gastro-entérologie', 'Médecine Cardiovasculaire', 'Médecine Générale', 'Médecine Intensive-Réanimation', 'Médecine Interne et Immunologie clinique', 'Médecine Légale et expertise médicale', 'Médecine Nucléaire', 'Médecine Physique et Réadaptation', 'Médecine du travail', 'Médecine Vasculaire', 'Médecine d’Urgence', 'Néphrologie', 'Neurochirurgie', 'Neurologie', 'Oncologie', 'Ophtalmologie', 'Oto-rhino-laryngologie et chirurgie cervico-faciale', 'Pédiatrie', 'Pneumologie', 'Psychiatrie', 'Radiologie et Imagerie Médicale', 'Rhumatologie', 'Urologie']

specialites.each { |value|
	specialty = Specialty.create!(
		specialty: value 
		)
}
