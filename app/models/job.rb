class Job < ApplicationRecord
  belongs_to :job_provider, foreign_key: "id"
  has_and_belongs_to_many :job_seekers
end
