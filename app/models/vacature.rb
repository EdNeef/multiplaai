class Vacature < ActiveRecord::Base

  def self.by_category_id_and_province_id(category_id = nil, province_id = nil)
    return where(category_id: category_id, province_id: province_id) if category_id && province_id
    return where(category_id: category_id) if category_id
    return where(province_id: province_id) if province_id
    all
  end

  validates :title, presence: true
  validates :category_id, presence: true
  validates :description, presence: true


  belongs_to :category
  belongs_to :province
end