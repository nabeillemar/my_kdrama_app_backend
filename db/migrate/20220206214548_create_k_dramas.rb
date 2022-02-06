class CreateKDramas < ActiveRecord::Migration[6.1]
  def change
    create_table :k_dramas do |t|
      t.string :title
      t.integer :release_year
      t.string :watched
      t.string :where_to_watch
      t.string :cover_photo
      t.integer :my_rating
      t.string :comment
      t.integer :category_id

      t.timestamps
    end
  end
end
