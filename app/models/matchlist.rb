class Matchlist < ApplicationRecord
    belongs_to :user
    has_many :matchedusers
    has_many :users, through: :matchedusers
end
