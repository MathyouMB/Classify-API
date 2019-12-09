module Types
    class BlacklisteduserType < Types::BaseObject
      field :id, ID, null: false
      field :blacklist, Types::BlacklistType, null: true
      field :user, Types::UserType, null: true
    end
  end