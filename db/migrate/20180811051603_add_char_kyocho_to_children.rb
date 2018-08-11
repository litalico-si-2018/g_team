class AddCharKyochoToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :char_kyocho, :float
  end
end
