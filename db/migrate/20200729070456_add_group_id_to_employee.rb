class AddGroupIdToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :group, null: true
  end
end
