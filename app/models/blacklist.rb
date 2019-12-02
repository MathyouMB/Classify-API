class Blacklist < ApplicationRecord
    belongs_to :user
    has_many :blacklistedusers
end
