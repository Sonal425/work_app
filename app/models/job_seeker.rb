class JobSeeker < User
  has_and_belongs_to_many :jobs
end
