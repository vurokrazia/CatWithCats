class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.references :game_root, null: false, foreign_key: true
      t.timestamps
    end
  end
end
