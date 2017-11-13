class Student < ApplicationRecord
  has_one :classroom
  self.primary_key = 'student_id'
end
