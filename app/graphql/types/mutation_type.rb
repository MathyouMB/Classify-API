module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :add_course_to_user, Boolean, null: true do 
      description "Add course to staff"
      argument :user_id, Int, required: true
      argument :course_id, Int, required: true
    end
    def add_course_to_user(user_id:, course_id:)
    
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
