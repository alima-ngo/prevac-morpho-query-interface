class Prefecture < ApplicationRecord
  self.table_name = "prefecture"

  has_many :beneficiaries, :foreign_key => "Prefecture"
end
