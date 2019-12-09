
module Queries
    class Matchlist < Queries::BaseQuery
      description 'Get a mathclist by id'
      argument :id, ID, required: true  

      type Types::MatchlistType, null: false
  
      def resolve(id:)
        ::Matchlist.find(id)
      end
    end
  end