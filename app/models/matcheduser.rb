class Matcheduser < ApplicationRecord
    belongs_to :matchlist
    belongs_to :user
end
