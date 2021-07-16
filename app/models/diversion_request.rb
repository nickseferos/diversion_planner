class DiversionRequest < ApplicationRecord
  belongs_to :line
  belongs_to :daily_plan
end
