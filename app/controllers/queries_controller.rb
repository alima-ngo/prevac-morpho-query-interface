class QueriesController < ApplicationController
  # Returns 'true' or 'false'
  def has_new_data
    since = params[:since]

    n = Visit.where("Date_Of_Visit > ?", since).count
    n += Beneficiary.where("Date_Of_Update > ?" , since).count
    n += ExcludeLog.where("Date_Of_Exclude > ?", since).count
    n += EnrollmentData.where("Date_Of_Enrollment > ?", since).count

    render json: (n > 0)
  end

  # Returns a list of PIDs
  def new_participants
    since = params[:since]
    b = Beneficiary.select("beneficiaries.*, enrollment_data.*").joins(:enrollment_data).where("enrollment_data.Date_Of_Enrollment > ?" , since)
    render json: b
  end

  # Returns list of PIDs
  def updated_data
    since = params[:since]

    v = Visit.select("PID, Visit_Type, Date_Of_Visit").where("Date_Of_Visit > ? AND Visit_Flag = 1", since)
    b = Beneficiary.select("PID").where("Date_Of_Exclude > ? AND Exclude = 1", since)

    render json: {visits: v, participants: b}
  end
end
