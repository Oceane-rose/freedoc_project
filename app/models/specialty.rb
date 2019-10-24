class Specialty < ApplicationRecord
  has_many :dr_specialties
  has_many :doctors, through: :dr_specialties
end
