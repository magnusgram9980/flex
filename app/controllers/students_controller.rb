class StudentsController < ApplicationController

  def index
    @students = Student.all
    # if params[:search]
    #   @students = Student.search(params[:search]).order("created_at DESC")
    # else
    #   @students = Student.all.order("created_at DESC")
    # end
  end

  def new
    @student = Student.new
  end

  def show
    @student = current_user.student
  end


  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student.destroy
    redirect_to student_path
  end

  private

  # def company_params
  #   params.require(:student).require(:user_id).permit(:name)
  # end


  # def set_company
  #     @company = Company.find(params[:id])
  #   end
  # end

end
