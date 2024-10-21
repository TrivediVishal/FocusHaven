class Task < ApplicationRecord
  belongs_to :status
  belongs_to :level
  belongs_to :session
  belongs_to :user
end
