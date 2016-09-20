class Beneficiary < ApplicationRecord
  has_one :enrollment_data, :foreign_key => "PID"
  has_many :exclude_logs, foreign_key: "PID"
  has_many :update_logs, foreign_key: "PID"
  has_many :unexpected_visits, foreign_key: "PID"
  has_many :visits, foreign_key: "PID"
end
