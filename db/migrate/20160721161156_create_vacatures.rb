class CreateVacatures < ActiveRecord::Migration
  def change
    create_table :vacatures do |t|
      t.string :title
      t.text :description
      t.string :logo
      t.string :function
      t.string :location
      t.string :category
      t.timestamps
    end
  end
end
