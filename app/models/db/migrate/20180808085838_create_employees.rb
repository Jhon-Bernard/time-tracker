class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :employeenumber
      t.text :firstname
      t.text :lastname
      t.string :email
      t.text :position
      t.text :client
      t.text :startdate
      t.timestamps
    end
  end
end
