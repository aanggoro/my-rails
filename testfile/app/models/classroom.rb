class Classroom < ApplicationRecord
  belongs_to :student
  self.primary_key = 'id_room'
end
