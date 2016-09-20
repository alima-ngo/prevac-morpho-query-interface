class VisitType < ApplicationRecord
  self.table_name = "visits_type"

  has_many :visits, foreign_key: "Visit_Type"
end
