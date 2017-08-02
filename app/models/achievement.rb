class Achievement < ActiveRecord::Base
  belongs_to :game
  belongs_to :member
end
