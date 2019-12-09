
module Queries
    class Login < Queries::BaseQuery
      description 'Returns true if a user enters correct credentials'
      argument :email, String, required: true
      argument :password, String, required: true

      type Types::UserType, null: false
  
      def resolve(email:, password:)
        user = ::User.find_by(email: email)
       
        if(!(user.password == password))
            raise GraphQL::ExecutionError, "Incorrect password"
        end
    
        user
      end
    end
  end