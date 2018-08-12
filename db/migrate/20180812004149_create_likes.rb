class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :article_id, null: false

      t.timestamps

      t.index :user_id
      
      t.index :article_id
      t.index [:user_id, :article_id], unique: true
    end
  end
end
