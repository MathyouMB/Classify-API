class SchoolsHaveStudents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :schools do |t|
      t.index [:user_id, :school_id]
    end
  end
end
