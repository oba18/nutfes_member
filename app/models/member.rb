class Member < ActiveRecord::Base
 has_many :members

 has_one :entires, dependent: :destroy

 validates :name,
  presence: { message: "入力してください" }

end
