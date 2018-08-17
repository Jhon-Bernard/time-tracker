class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :users, foreign_key: true
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
