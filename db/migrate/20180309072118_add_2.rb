class Add2 < ActiveRecord::Migration
  def change
    add_column :members, :kyokuchou, :integer
  end
end
