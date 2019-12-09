
module Queries
    class FindMatches < Queries::BaseQuery
      description 'Find matches for a given user'
      argument :id, ID, required: true
      type [Types::UserType], null: false
  
      def resolve(id:)

        user_of_request = ::User.find_by(id: id)

        if user_of_request.nil?
            raise GraphQL::ExecutionError, "User does not exist"
        end

        returnUsers = ::User.joins(:courses).where.not(id: [user_of_request.blacklist.users]).where.not(id: [user_of_request.matchlist.users]).where(courses: {id: [user_of_request.courses]}).limit(10).uniq

        returnUsers
      end
    end
  end