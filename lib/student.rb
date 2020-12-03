class Student < ActiveRecord::Base
    has_many :classes
    has_many :ratings, through: :classes
end