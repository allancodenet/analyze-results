class StudentSubjectsController < ApplicationController
  def index
    # @studentSubjects = Student.where(substream_id: params[:substream_id])
    # @studentSubjects = Student.where(subject_id: params[:subject_id])

    # @student_subjects = Students.where(substream_id: params[:substream_id],subject_id: params[:subject_id]).map(&:student_subject).flatten

    @substream = Substream.find(params[:substream_id])

    @students = @substream.students


  end


  def create
    
  end

  # localhost:3000/student_subjects?subject_id=1&substream=1


  # def index
  #   @subject = Subject.find(params[:subject_id])
  
  #   @student_subjects = @subject.student_subjects.join(:student).where(student: {substream: substream})
  # end
  
  # def create
  #   [grade: "A",student_subject_id: 1 ]
  
  #   @student_subject = StudentSubject.find(params[:student_subject_id])
  
  #   @student_subject.update(grade: params[:grade])
  # end
  
  
  # @student_subjects.each do |student_subject|
  #   student_subject.student.name
  #   @subject.name
  
  #   []
  
  # end
















end
