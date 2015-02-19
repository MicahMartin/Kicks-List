class Shoe < ActiveRecord::Base

  acts_as_mappable
  belongs_to :user
  mount_uploader :image, ImageUploader
  
end
