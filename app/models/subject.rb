class Subject < ApplicationRecord
 has_many :student_subjects 
 has_many :students, through: :student_subjects
 accepts_nested_attributes_for :student_subjects, reject_if: proc { |attributes| attributes['id'].present? }
end
