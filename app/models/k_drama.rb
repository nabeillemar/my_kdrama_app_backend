class KDrama < ApplicationRecord
    belongs_to :category

    validates :title, presence: true
    #validates :my_rating, numericality: { only_integer: true }

end
