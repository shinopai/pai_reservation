class Schedule < ApplicationRecord
  # relation
  belongs_to :tutor

  # validation
  validates :start_date,
              presence: true,
              uniqueness: { scope: [:tutor_id] }
end
