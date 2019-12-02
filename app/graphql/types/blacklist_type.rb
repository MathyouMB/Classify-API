module Types
  class BlacklistType < Types::BaseObject
    field :id, ID, null: false
    #field :blacklistedusers, [Types::UserType], null: true
  end
end