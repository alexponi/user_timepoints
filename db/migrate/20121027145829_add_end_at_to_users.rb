class AddEndAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :end_at, :datetime
  end
end
