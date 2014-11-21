class MedicalHistory < ActiveRecord::Base
  validates :bp, :temperature, :weight, numericality: true
  belongs_to :patient
end
