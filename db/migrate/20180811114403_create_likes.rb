class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps

      t.index :user_id
      t.index :article_id
      t.index [:user_id, :article_id], unique: true
    end
  end
end
