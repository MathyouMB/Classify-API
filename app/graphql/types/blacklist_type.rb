module Types
  class BlacklistType < Types::BaseObject
    field :id, ID, null: false
    field :blacklistedusers, [Types::BlacklisteduserType], null: true
    field :users, [Types::UserType], null: true
  end
end