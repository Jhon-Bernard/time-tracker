class AddClientToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :client, :text
    add_column :users, :position, :text
    add_column :users, :id_number, :integer
  end
end
