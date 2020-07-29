class Group < ApplicationRecord
  belongs_to :leader, class_name: 'Employee'
  has_many :employees
end
