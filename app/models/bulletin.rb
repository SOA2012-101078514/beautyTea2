class Bulletin < ActiveRecord::Base
  attr_accessible :date, :deadline, :msg
end
