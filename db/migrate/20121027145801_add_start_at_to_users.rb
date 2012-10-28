class AddStartAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :start_at, :datetime
  end
end
