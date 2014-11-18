class MedicalHistory < ActiveRecord::Base
  validates :bp, :temperature, :weight, numericality: true
end
