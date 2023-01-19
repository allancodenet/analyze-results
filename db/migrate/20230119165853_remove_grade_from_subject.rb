class RemoveGradeFromSubject < ActiveRecord::Migration[7.0]
  def change
    remove_column :grades, :subject_id
  end
end
