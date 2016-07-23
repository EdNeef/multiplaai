class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :title
      t.string :slug
      t.timestamps
    end
  end
end
