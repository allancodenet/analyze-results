class AddSubjectToGrade < ActiveRecord::Migration[7.0]
  def change
    add_column  :grades, :subject_id ,:integer
  end
end
