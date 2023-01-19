class AddIndexToStudentSubject < ActiveRecord::Migration[7.0]
  def change
    add_index :student_subjects ,[:student_id, :subject_id], unique: true
  end
end
