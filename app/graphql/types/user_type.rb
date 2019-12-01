module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :school, [Types::SchoolType], null: true
    field :school_id, ID, null: true
  end
end
