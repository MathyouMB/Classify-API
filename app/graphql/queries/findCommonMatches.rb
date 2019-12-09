
module Queries
    class FindCommonMatches < Queries::BaseQuery
      description 'Find matches all succesful matches for a given user'
      argument :id, ID, required: true
      type [Types::UserType], null: false
  
      def resolve(id:)

        user_of_request = ::User.find_by(id: id)

        if user_of_request.nil?
            raise GraphQL::ExecutionError, "User does not exist"
        end
  
        user_matches = user_of_request.matchlist.users
        
        returnUsers = Array.new

        user_matches.each do |user|
            if((user.matchlist.users.include? user_of_request))
                returnUsers.push(user)
            end
        end

        returnUsers

      end
    end
  end