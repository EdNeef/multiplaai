class AddProvinceIdToVacatures < ActiveRecord::Migration
  def change
    add_column :vacatures, :province_id, :integer
  end
end
