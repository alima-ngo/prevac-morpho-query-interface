class UnexpectedVisit < ApplicationRecord
  self.table_name = "beneficiaries_unexcpeted_visits"

  belongs_to :beneficiary, foreign_key: "PID"
end
