class RemoveGakunenidFromChild < ActiveRecord::Migration[5.2]
  def change
    remove_column :children, :gakunen_id, :integer
  end
end
