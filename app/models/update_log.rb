class UpdateLog < ApplicationRecord
  self.table_name = "beneficiary_update_log"

  belongs_to :beneficiary, foreign_key: "PID"
end
