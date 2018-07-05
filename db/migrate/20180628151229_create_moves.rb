class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.integer :player_id
      t.integer :startX
      t.integer :startY
      t.integer :endX
      t.integer :endY
      t.integer :startDelay
      t.integer :endDelay
      t.integer :duration
      t.integer :order

      t.timestamps
    end
  end
end
