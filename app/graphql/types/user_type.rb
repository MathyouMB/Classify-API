module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :biography, String, null: true
    field :schools, [Types::SchoolType], null: true
    field :courses, [Types::CourseType], null: true
    field :blacklist, Types::BlacklistType, null: false
    field :matchlist, Types::MatchlistType, null: false
    field :my_blacklistedusers, [Types::UserType], null: false
    field :my_matchlistedusers, [Types::UserType], null: false

    def my_blacklistedusers 
      self.object.blacklist.users
    end

    def my_matchlistedusers 
      self.object.matchlist.users
    end
  end
end
