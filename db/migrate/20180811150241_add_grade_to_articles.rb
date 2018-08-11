class AddGradeToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :grade, :integer
  end
end
