class Visit < ApplicationRecord
  self.table_name = "beneficiaries_visits"

  belongs_to :beneficiary, foreign_key: "PID"
  belongs_to :visit_type, foreign_key: "Visit_Type"
end
