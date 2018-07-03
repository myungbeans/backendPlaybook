class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :play_id
      t.integer :x
      t.integer :y
      t.string :name

      t.timestamps
    end
  end
end
