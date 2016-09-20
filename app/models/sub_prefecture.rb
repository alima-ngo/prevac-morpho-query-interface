class SubPrefecture < ApplicationRecord
  self.table_name = "sub_prefecture"

  belongs_to :prefecture, foreign_key: "Prefecture"
  has_many :beneficiaries, foreign_key: "Sub_Prefecture"
end
