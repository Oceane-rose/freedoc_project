class Specialty < ApplicationRecord
  has_many :doctors
  has_many :doctors, through: :appointments
end
