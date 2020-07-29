class Event < ApplicationRecord
  belongs_to :employee
  validates :employee_id, uniqueness: true
end
