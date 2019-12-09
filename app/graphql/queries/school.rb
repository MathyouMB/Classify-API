
module Queries
    class School < Queries::BaseQuery
      description 'Get school by id'
  
      type Types::SchoolType, null: false
  
      def resolve(id:)
        ::School.find(id)
      end
    end
  end