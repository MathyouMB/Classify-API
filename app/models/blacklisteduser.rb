class Blacklisteduser < ApplicationRecord
    belongs_to :blacklist
    belongs_to :user
end
