class JobProvider < User
  has_many :jobs, foreign_key: "created_by"
end
