module Mutations
    class RemoveUserFromMatchlist < Mutations::BaseMutation
        description "Move a matched user to a user's blacklist"
        argument :profile_id, Int, required: true
        argument :user_id, Int, required: true

        type Boolean

        def resolve(profile_id:,user_id:) 
  
            profile_of_request = User.find_by(id: profile_id)
            user_of_request = User.find_by(id: user_id)
        
            if profile_of_request.nil?
                raise GraphQL::ExecutionError, "Profile user doesn't exist"
            end
            
            if user_of_request.nil?
                raise GraphQL::ExecutionError, "User does not exist"
            end

            profile_matchlist_users = profile_of_request.matchlist.users

            if (!(profile_matchlist_users.include? user_of_request))
                raise GraphQL::ExecutionError, "User is not a part of this profiles matchlist"
            end

            
            profile_of_request.matchlist.matchedusers.find_by(user_id: user_id).destroy

            b = Blacklisteduser.create(
                blacklist_id: profile_of_request.blacklist.id,
                user_id: user_id,
            )
            
            true
        end
    end
end