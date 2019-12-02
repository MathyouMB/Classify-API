class Matchlist < ApplicationRecord
    belongs_to :user
    has_many :users
end
