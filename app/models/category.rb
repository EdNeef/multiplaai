class Category < ActiveRecord::Base

  validates :title, presence: true
  validates :logo, presence: true
  
  
  has_many :vacatures

end