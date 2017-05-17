class Director < ApplicationRecord
  validates :name, :presence => true, :uniqueness => { :dob => true }

  has_many :movies

end
