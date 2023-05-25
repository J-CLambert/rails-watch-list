class Movie < ApplicationRecord
    has_many :bookmarks #, dependent: :destroy
    validates :title, uniqueness: true, allow_blank: false, presence: true
    validates :overview, presence: true
end
