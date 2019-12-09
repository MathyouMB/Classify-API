module Types
  class QueryType < Types::BaseObject
    
    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :login, Types::UserType, null: false do
      argument :email, String, required: true
      argument :password, String, required: true
    end

    def login(email:, password:)
      User.find_by(email: email)
    end

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

      returnUsers = Array.new

      givenUsers = User.joins(:courses).where(courses: {id: [user_of_request.courses]})

      givenUsers.each do |user|
        if(!(returnUsers.include? user))
          returnUsers.push(user)
        end
      end

      # user has blacklist
      # blacklist has many blaclistedUsers

      returnUsers
    end

  end
end
