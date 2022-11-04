class StudentsController < ApplicationController
  def index
    @student_264 = Student.all
  end

  def show
    @student_264 = Student.find(params[:id])
  end

  def edit
    @student_264 = Student.find(params[:id])
  end

  def update
    @student_264 = Student.find(params[:id])
    @student_264 = update(student_params)
    redirect_to students_index_path
  end

  def destroy
    @student_264 = Student.find(params[:id])
    @student_264.destroy
    redirect_to students_index_path
  end

  def new
    @student_264 = Student.new
  end

  def create
    student_264 = Student.create(student_params)
    redirect_to students_index_path
  end

  private
  def student_params
    params.require(:student).permit(:mahs, :ten, :lop, :masach, :tensach, :tacgia, :tusach, :sobm, :ngaymuon, :ngaytra, :songay)
  end
end
