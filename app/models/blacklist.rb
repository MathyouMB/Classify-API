class Blacklist < ApplicationRecord
    belongs_to :user
    has_many :blacklistedusers
    has_many :users, through: :blacklistedusers
end
