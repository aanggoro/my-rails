class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms, id: false, primary_key: :id_room do |t|
      t.string :id_room
      t.string :name_room
      t.string :student_id
        
      t.timestamps
    end
  end
end
