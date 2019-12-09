
module Queries
    class Course < Queries::BaseQuery
      description 'Get course by id'
  
      type Types::CourseType, null: false
  
      def resolve(id:)
        ::Course.find(id)
      end
    end
  end