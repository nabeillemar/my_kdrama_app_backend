class AddCategoryToKDrama < ActiveRecord::Migration[6.1]
  def change
    #add_reference :k_dramas, :category, null: false, foreign_key: true
    add_reference :k_dramas, :category, foreign_key: true
  end
end
