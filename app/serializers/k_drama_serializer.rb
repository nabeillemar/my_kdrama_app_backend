class KDramaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :release_year, :watched, :where_to_watch, :cover_photo, :my_rating, :comment, :category_id, :category
end

# we can control whats get render, we can create and display assocations 
# display the category object with the Kdrama object 
# for each kdrama you can easily connect the association in the attributes object.
# I can access this association with 1 fetch call if we use serializers 
# you can also add the category to the controller (other options )
