class Skal::Event < ActiveRecord::Base

  mount_uploader :file, Skal::FileUploader
  
  validates :title, presence: true
  validates :status, presence: true
    
end