class ProgramHasStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :program, foreign_key: true
  end
end
