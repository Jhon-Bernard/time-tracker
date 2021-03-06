class AddInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :text
    add_column :users, :lastname, :text
    add_column :users, :admin, :boolean, default: false
  end
end
