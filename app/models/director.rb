class Director < ApplicationRecord
  validates:name, :presence=>true, :uniqueness=> {:scope=>[:dob]}
  has_many(:movie, :class_name=>"Movie", :foreign_key=>"director_id")
end
