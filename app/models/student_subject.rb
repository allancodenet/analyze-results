class StudentSubject < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  belongs_to :grade

  delegate :name, to: :subject, prefix: true




end
