class AddCharKyomiToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :char_kyomi, :float
  end
end
