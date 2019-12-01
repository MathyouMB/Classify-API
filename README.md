# Classify API

user
has many and belongs to :courses
belongs_to :school

course
has many and belong to:users
belongs_to :program
belongs_to :school => through program

program
has many :courses
belongs_to :school

school
has many :programs
has many :courses => through programs
has many :students

