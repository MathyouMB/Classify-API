module Mutations
    class AddCourseToUser < Mutations::BaseMutation
        description "Add course to staff"
        argument :user_id, Int, required: true
        argument :course_id, Int, required: true

        type Boolean

        def resolve(user_id:, course_id:) 
       
            user_of_request = User.find_by(id: user_id)
            course_of_request = Course.find_by(id: course_id)
        
            if user_of_request.nil?
                raise GraphQL::ExecutionError, "User does not exist"
            end

            if course_of_request.nil?
                raise GraphQL::ExecutionError, "course doesn't exist"
            end

            user_of_request.courses << course_of_request
            user_of_request.save

        end
    end
end