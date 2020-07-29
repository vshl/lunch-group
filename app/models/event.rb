class Event < ApplicationRecord
  belongs_to :employee
  validates :employee_id, uniqueness: true

  def self.going
    where(lunch: true)
  end

  def self.group_slices
    going.each_slice(4)
  end
end
