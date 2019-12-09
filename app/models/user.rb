class User < ApplicationRecord
    has_and_belongs_to_many :schools
    has_and_belongs_to_many :courses
    has_one :blacklist
    has_one :matchlist
    has_many :blacklistedusers
    has_many :matchedusers

end
