class MarksheetsController < ApplicationController
  def index
    @students = Student.includes(:student_subjects)
    @subjects = Subject.order(:name)
    
  end
end
