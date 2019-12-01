class User < ApplicationRecord
    belongs_to :school
    has_and_belongs_to_many :courses
end
