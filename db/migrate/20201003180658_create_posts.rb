class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      
      t.string :image,           null: false
      t.string :title,           null: false
      t.string :act,             null: false
      t.string :words,           null: false
      t.string :reason,          null: false
      t.integer :category_id,    null: false, default: 0
      t.integer :user_id,        null: false, foreign_key: true

      t.timestamps
    end
  end
end
