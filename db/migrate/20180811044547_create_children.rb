class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :user_id
      t.integer :gakunen_id
      t.integer :gender_id
      t.float :char_ochitsuki

      t.timestamps
    end
  end
end
