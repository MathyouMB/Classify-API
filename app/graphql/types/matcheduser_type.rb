module Types
    class MatcheduserType < Types::BaseObject
      field :id, ID, null: false
      field :matchlist, Types::MatchlistType, null: true
      field :user, Types::UserType, null: true
    end
  end