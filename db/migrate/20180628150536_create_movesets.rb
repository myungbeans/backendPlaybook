class CreateMovesets < ActiveRecord::Migration[5.2]
  def change
    create_table :movesets do |t|
      t.integer :player_id
      t.integer :sequence

      t.timestamps
    end
  end
end
