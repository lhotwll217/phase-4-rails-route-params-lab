class StudentsController < ApplicationController

  def index
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end
  

  def show 
    student = Student.find(params[:id])
    render json: student

    # find_students = Student.find_by()
  end

end

# ( "id = ? OR first_name = ? OR :last_name = ? " , params[:id], params[:first_name], params[:last_name])