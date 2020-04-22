class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show 
    if params[:id] != nil 
      @student  = Student.find(params[:id])
      @students = [@student]
      render 'index'
    end 
  end 
end