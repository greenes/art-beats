class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :prof_pic
      t.string :contact_info

      t.timestamps null: false
    end
  end
end
