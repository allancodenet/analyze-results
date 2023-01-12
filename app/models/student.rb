class Student < ApplicationRecord

    validates :name, presence: true
    validates :index_no, presence: true
    has_many( :student_subjects)
    has_many :subjects ,through: :student_subjects
    has_many :grades, through: :subjects
    belongs_to :substream    
end
