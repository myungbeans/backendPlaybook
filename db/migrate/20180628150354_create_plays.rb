class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.integer :playbook_id
      t.string :title

      t.timestamps
    end
  end
end
