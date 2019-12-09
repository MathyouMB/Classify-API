
module Queries
    class Schools < Queries::BaseQuery
      description 'Get all schools'
  
      type [Types::SchoolType], null: false
  
      def resolve()
        ::School.all
      end
    end
  end