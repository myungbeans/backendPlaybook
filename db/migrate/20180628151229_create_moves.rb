class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.integer :moveset_id
      t.integer :startX
      t.integer :startY
      t.integer :endX
      t.integer :endY
      t.integer :startDelay
      t.integer :endDelay
      t.integer :duration

      t.timestamps
    end
  end
end
