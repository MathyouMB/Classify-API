module Mutations
    class CreateCourse < Mutations::BaseMutation
      argument :code, String, required: true
      argument :name, String, required: true

      type Types::CourseType
  
      def resolve(code: nil, name: nil) 

        course = Course.create(
          code: code,
          name: name,
        )
        
        raise GraphQL::ExecutionError, board.errors.full_messages.join(", ") unless course.errors.empty?
        
        course

      end
    end
  end