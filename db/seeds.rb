# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

#Remets a 0 la base avant de Seed
City.destroy_all
Specialty.destroy_all
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
DrSpecialty.destroy_all

#Creation des villes
15.times do
  City.create!(
    city: Faker::Address.city
  )
end

#Creation des Specialites
15.times do
  Specialty.create!(
    name: ["Dermatologists","Surgeon","Endocrinologists","Cardiologists","Allergists","Gastroenterologists"].sample,
  )
end 

#Creation des patients
50.times do
  Patient.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  city: City.all.sample
  )
end

#Creation des docs
15.times do
 Doctor.create!(
 first_name: Faker::Name.first_name,
 last_name: Faker::Name.last_name,
 zip_code: Faker::Address.zip,
 city: City.all.sample
 )
 end

  #Creation RDV
  15.times do
    Appointment.create!(
    date: ["2019-10-28 18:00", "2019-10-30 10:00", "2019-10-31 11:00", "2019-10-25 12:00", "2019-10-27 15:00"].sample,
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    city: City.all.sample,
   
    )
  end

  #Creation du tableau join des specialites
  20.times do 
    DrSpecialty.create!(
      doctor:Doctor.all.sample, 
      specialty:Specialty.all.sample
      )
  end

  
  







