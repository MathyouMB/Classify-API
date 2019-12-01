class JoinUsersAndCourses < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :courses do |t|
      t.index [:user_id, :course_id]
    end
  end
end
