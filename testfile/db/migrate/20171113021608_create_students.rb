class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students, id: false, primary_key: :student_id do |t|
      t.string :student_id
      t.string :name

      t.timestamps
    end
  end
end
