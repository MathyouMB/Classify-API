module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :schools, [Types::SchoolType], null: true
    field :courses, [Types::CourseType], null: true
    #field :blacklist, [Types::BlacklistType], null: false

  end
end
