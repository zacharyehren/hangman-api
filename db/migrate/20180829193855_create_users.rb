class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :wins
      t.integer :losses
      t.integer :total_games
      t.float :average

      t.timestamps
    end
  end
end
