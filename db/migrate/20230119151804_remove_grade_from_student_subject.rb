class RemoveGradeFromStudentSubject < ActiveRecord::Migration[7.0]
  def change
    remove_column :student_subjects, :grade 
  end
end
