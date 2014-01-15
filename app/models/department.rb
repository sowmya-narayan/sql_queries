class Department < ActiveRecord::Base

  belongs_to :location
  has_many :employees

end
