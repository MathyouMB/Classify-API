module Types
    class MatchlistType < Types::BaseObject
        field :id, ID, null: false
        field :matchedusers, [Types::MatcheduserType], null: true
        field :users, [Types::UserType], null: true
    end
  end