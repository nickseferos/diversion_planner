class DailyPlan < ApplicationRecord
  has_many :diversion_requests, dependent: :destroy
end
