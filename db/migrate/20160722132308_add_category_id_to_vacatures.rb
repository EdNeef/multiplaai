class AddCategoryIdToVacatures < ActiveRecord::Migration
  def change
    add_column :vacatures, :category_id, :integer
  end
end
