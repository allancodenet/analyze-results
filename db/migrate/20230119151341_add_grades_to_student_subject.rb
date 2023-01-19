class AddGradesToStudentSubject < ActiveRecord::Migration[7.0]
  def change
    add_reference :student_subjects, :grade, null: true, foreign_key: true
  end
end
