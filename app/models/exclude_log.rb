class ExcludeLog < ApplicationRecord
  self.table_name = "beneficiary_exclude_log"

  belongs_to :beneficiary, foreign_key: "PID"
end
