class AddHoursWorkedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hours_worked, :datetime
  end
end
