class Employee < ActiveRecord::Base

  belongs_to :department
  belongs_to :job

end
