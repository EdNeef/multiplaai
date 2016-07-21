class RemoveLogoFromVacatures < ActiveRecord::Migration
  def change
    remove_column :vacatures, :logo
  end
end
