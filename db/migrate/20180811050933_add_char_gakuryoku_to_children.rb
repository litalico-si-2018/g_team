class AddCharGakuryokuToChildren < ActiveRecord::Migration[5.2]
  def change
    add_column :children, :char_gakuryoku, :float
  end
end
