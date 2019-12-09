class CreateMatchedusers < ActiveRecord::Migration[6.0]
  def change
    create_table :matchedusers do |t|

      t.timestamps
    end
  end
end
