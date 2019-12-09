module Mutations
    class AddUserToMatchlist < Mutations::BaseMutation
        description "Add user to another users matchlist"
        argument :profile_id, Int, required: true
        argument :user_id, Int, required: true

        type Boolean

        def resolve(profile_id:,user_id:) 
  
            profile_of_request = User.find_by(id: profile_id)
            user_of_request = User.find_by(id: user_id)
        
            if profile_of_request.nil?
              raise GraphQL::ExecutionError, "User doesn't exist"
            end
      
            if user_of_request.nil?
              raise GraphQL::ExecutionError, "User does not exist"
            end
      
            if profile_of_request.blacklist.users.include? user_of_request
              raise GraphQL::ExecutionError, "user is in blacklist"
            end
      
            if profile_of_request.matchlist.users.include? user_of_request
              raise GraphQL::ExecutionError, "user is in matchlist"
            end
      
            b = Matcheduser.create(
                matchlist_id: profile_of_request.blacklist.id,
                user_id: user_id,
            )
      
            true
        end
    end
end