class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    t.string :name, null: false #名前
    t.string :kyoku, null: false #局
    t.string :cource #課程
    t.string :grade #学年
    t.string :email #メールアドレス
    end
  end
end
