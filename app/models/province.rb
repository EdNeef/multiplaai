class Province < ActiveRecord::Base

  validates :title, presence: true 
  
  has_many :vacatures

end