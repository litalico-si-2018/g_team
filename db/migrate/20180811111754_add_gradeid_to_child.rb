class AddGradeidToChild < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :grade_id, :integer
  end
end
