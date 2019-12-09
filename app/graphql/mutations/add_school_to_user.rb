module Mutations
    class AddSchoolToUser < Mutations::BaseMutation
        description "Add school to staff"
        argument :user_id, Int, required: true
        argument :school_id, Int, required: true

        type Boolean

        def resolve(user_id:, school_id:) 
  
            user_of_request = User.find_by(id: user_id)
            school_of_request = School.find_by(id: school_id)
        
            if user_of_request.nil?
              raise GraphQL::ExecutionError, "User does not exist"
            end
      
            if school_of_request.nil?
              raise GraphQL::ExecutionError, "school doesn't exist"
            end
      
            user_of_request.schools << school_of_request
            user_of_request.save
            
        end
    end
end