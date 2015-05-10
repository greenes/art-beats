class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.belongs_to :user
      t.string :gallery_name
      t.text :description

      t.timestamps null: false
    end
  end
end
