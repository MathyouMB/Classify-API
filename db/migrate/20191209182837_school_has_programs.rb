class SchoolHasPrograms < ActiveRecord::Migration[6.0]
  def change
    add_reference :programs, :school, foreign_key: true
  end
end
