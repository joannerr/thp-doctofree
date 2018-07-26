require 'faker'

#Creations des patients
5.times do 
	Patient.create(first_name: Faker::Cat.name, last_name: Faker::Color.color_name)
end

#Creation des docteurs
5.times do
	Doctor.create(first_name: Faker::Coffee.variety, last_name: Faker::Coffee.intensifier, speciality: Faker::Company.industry, postal_code: Faker::Company.french_siren_number)
end

#Creation des appointments
10.times do
	Appointment.create(date: Faker::Date.forward(23), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
end