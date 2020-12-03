class Student < ActiveRecord::Base
    has_many :ratings
    has_many :klasses, through: :ratings
end