class Schedule < ApplicationRecord
  # relation
  belongs_to :tutor

  # validation
  validates :start_date,
              presence: true,
              uniquness: { scope: [:tutor_id] }
end
