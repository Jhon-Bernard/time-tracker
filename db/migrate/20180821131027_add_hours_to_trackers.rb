class AddHoursToTrackers < ActiveRecord::Migration[5.2]
  def change
    add_column :trackers, :hours, :integer
    add_column :trackers, :tardy, :integer
    add_column :trackers, :undertime, :integer
  end
end
