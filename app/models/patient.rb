class Patient < ActiveRecord::Base
  has_many :medical_histories, dependent: :nullify
  validates :age, :nssNumber, :name, presence: true

  mount_uploader :image, ImageUploader








  def self.search(search)
    where(['name like ?', "%#{search}%"]) 
  end

end
