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


    field :find_users, [Types::UserType], null: false
      argument :id, ID, required: true
    end
    def find_users
      user_of_request = User.find_by(id: id)
     
      if user_of_request.nil?
        raise GraphQL::ExecutionError, "User does not exist"
      end
=begin
      courses = user_of_request.courses
      courses = user_of_request.
      results = User.where()
=end
    end


  end
end
