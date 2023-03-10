class SubjectsController < ApplicationController
  before_action :set_subject, only:[:index]
  def index


    @substream = Substream.find_by_id(params[:substream_id])
    
    @students = @substream.present? ? @substream.students : Student.all
    
  # @subject.student_subjects = []
   @students.each do |student|
    @subject.student_subjects.build(student: student, subject: @subject)
   end
  

  end

def update
  binding.break
  
  @subject.update!(params)
  # Subject.update(subject_params)

  redirect_to  subjects_path
  
end



def subject_params
  params.require(:subject).permit(student_subjects_attributes:[:student_id, :grade_id])
  
end

def set_subject
  @subject = Subject.find_by(id: params[:subject_id]) || Subject.first
end


end
