class UserHasMatchlist < ActiveRecord::Migration[6.0]
  def change
    add_reference :matchlists, :user, foreign_key: true
  end
end
