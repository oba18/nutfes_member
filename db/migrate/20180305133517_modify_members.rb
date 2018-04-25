class ModifyMembers < ActiveRecord::Migration
  def change
    add_column :members, :labo, :string
    change_column :members, :grade, :string
    end
end
