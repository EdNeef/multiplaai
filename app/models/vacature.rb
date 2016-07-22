class Vacature < ActiveRecord::Base

  def self.by_category_id_and_location(category_id = nil, location = nil)
    return where(category_id: category_id, location: location) if category_id && location
    return where(category_id: category_id) if category_id
    return where(location: location) if location
    all
  end

  validates :title, presence: true
  validates :category_id, presence: true
  validates :description, presence: true


  belongs_to :category
end