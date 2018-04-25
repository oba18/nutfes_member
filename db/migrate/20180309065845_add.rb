class Add < ActiveRecord::Migration
  def change
    add_column :members, :furigana, :string
    add_column :members, :gakunen, :string
    add_column :members, :work, :string
  end
end
