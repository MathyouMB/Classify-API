class UserHasBio < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :biography, :string
  end
end
