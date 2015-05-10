class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.belongs_to :gallery
      t.belongs_to :user
      t.string :piece_name
      t.string :piece_date
      t.text :piece_description

      t.timestamps null: false
    end
  end
end
