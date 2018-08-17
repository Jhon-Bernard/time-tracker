class CreateTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :trackers do |t|
      t.references :user, foreign_key: true
      t.datetime :loggin_in
      t.datetime :loggin_out

      t.timestamps
    end
  end
end
