class MatchlistHasMUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :matchedusers, :matchlist, foreign_key: true
  end
end
