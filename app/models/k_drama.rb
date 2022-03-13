class KDrama < ApplicationRecord
    belongs_to :category
    validates :title, :cover_photo, :release_year, :watched, presence: true
    validates :my_rating, numericality: { only_integer: true, less_than_or_equal_to: 10 }



end
