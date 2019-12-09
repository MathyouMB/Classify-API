
module Queries
    class Users < Queries::BaseQuery
      description 'Get all users'
  
      type [Types::UserType], null: false
  
      def resolve()
        User.all
      end
    end
  end