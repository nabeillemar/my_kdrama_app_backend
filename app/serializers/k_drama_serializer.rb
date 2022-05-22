class KDramaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :release_year, :watched, :where_to_watch, :cover_photo, :my_rating, :comment, :category_id, :category
end

