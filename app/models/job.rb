class Job < ApplicationRecord
  belongs_to :jobProvider
  has_and_belongs_to_many :jobSeekers
end
