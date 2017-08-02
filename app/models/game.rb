class Game < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :achievement
  has_many :achievement
end
