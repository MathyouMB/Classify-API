class School < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :programs
end
