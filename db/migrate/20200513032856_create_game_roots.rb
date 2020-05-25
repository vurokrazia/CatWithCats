class CreateGameRoots < ActiveRecord::Migration[6.0]
  def change
    create_table :game_roots do |t|
      t.boolean :available, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
