class CreateMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :markers do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :win
      t.integer :lose

      t.timestamps
    end
  end
end
