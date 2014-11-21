class Patient < ActiveRecord::Base
  has_many :medical_histories, dependent: :nullify
  # validates :age, :nssNumber, :name
  mount_uploader :image, ImageUploader
end
