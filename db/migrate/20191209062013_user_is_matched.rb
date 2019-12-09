class UserIsMatched < ActiveRecord::Migration[6.0]
  def change
    add_reference :matchedusers, :user, foreign_key: true
  end
end
