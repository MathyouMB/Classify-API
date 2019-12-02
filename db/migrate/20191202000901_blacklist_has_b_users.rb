class BlacklistHasBUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :blacklistedusers, :blacklist, foreign_key: true
    add_reference :blacklisteduser, :blacklists, foreign_key: true
  end
end
