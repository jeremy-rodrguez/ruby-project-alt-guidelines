class Class < ActiveRecord::Base
    has_many :students
    has_many :ratings, through: :students
end