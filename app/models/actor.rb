class Actor < ApplicationRecord
    validates :name, :presence => true, :uniqueness => { :dob => true }

    has_many :characters
    has_many :movies, :through => :characters
end
