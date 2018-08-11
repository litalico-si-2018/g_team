class AddCharSyuchuToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :char_syuchu, :float
  end
end
