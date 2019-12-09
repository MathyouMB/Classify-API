module Types
  class QueryType < Types::BaseObject
=begin
    field :users, [Types::UserType], null: false

    def users
      User.all
    end
=end
    field :users, resolver: Queries::Users
    
    field :user, resolver: Queries::User

    field :matchlist, resolver: Queries::Matchlist

    field :login, resolver: Queries::Login

    field :schools, [Types::SchoolType], null: false

    def schools
      School.all
    end

    field :courses, [Types::CourseType], null: false

    def courses
      Course.all
    end

    field :find_matches, [Types::UserType], null: false do
      argument :id, ID, required: true
    end

    def find_matches(id:)
      user_of_request = User.find_by(id: id)

      if user_of_request.nil?
        raise GraphQL::ExecutionError, "User does not exist"
      end

      returnUsers = User.joins(:courses).where.not(id: [user_of_request.blacklist.users]).where.not(id: [user_of_request.matchlist.users]).where(courses: {id: [user_of_request.courses]}).limit(10).uniq

      returnUsers
    end

  end
end
