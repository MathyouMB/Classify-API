class UserHasBlacklist < ActiveRecord::Migration[6.0]
  def change
    add_reference :blacklists, :user, foreign_key: true
    add_reference :users, :blacklist, foreign_key: true
  end
end
