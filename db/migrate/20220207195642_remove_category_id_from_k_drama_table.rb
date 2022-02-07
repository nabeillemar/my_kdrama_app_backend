class RemoveCategoryIdFromKDramaTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :k_dramas, :category_id, :integer
  end
end
