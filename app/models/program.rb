class Program < ApplicationRecord
    has_many :users
    belongs_to :school
end
