class Neighborhood < ApplicationRecord
    has_many :cocktails

    validates :name, presence: true
end
