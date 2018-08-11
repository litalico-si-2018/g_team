class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.integer :child_id
      t.integer :subject_id
      t.text :text

      t.timestamps
    end
  end
end
