class UserIsBlacklisted < ActiveRecord::Migration[6.0]
  def change
    add_reference :blacklistedusers, :user, foreign_key: true
  end
end
