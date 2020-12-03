class Klass < ActiveRecord::Base
    has_many :ratings
    has_many :students, through: :ratings
end