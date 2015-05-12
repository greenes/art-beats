class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.belongs_to :gallery
      t.string :piece_url
      t.string :piece_name
      t.text :piece_description


      t.timestamps null: false
    end
  end
end
