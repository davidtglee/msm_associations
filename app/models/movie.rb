class Movie < ApplicationRecord
  validates:director_id, :presence=> true
  validates:title, :presence=> true, :uniqueness=> {:scope=>[:year,:duration]}
  validates:year, :presence=>true, :numericality=> {:only_integer=>true, :greater_than_or_equal_to=>1870, :less_than_or_equal_to=>2050}
  validates:duration, :presence=>true, :numericality=> {:only_integer=>true, :allow_blank=>true, :greater_than_or_equal_to=>0, :less_than_or_equal_to=>2764800}
  belongs_to(:director, :class_name=>"Director", :foreign_key=>"director_id")
  has_many(:characters, :class_name=>"Character", :foreign_key=>"movie_id")

end
