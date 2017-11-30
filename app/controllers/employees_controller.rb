class EmployeesController < ApplicationController
  before_action :set_id, only: [:show,:update,:edit,:destroy]
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @employees = Employee.all
  end

  def edit
  end

  def update
    if @employee.update_attributes(employee_params)
      redirect_to employees_path
    else
      render 'edit'
    end
  end

  def destroy
    if @employee.delete
      redirect_to employees_path
    end
  end

private
  def employee_params
    params.require(:employee).permit!
  end

  def set_id
    @employee = Employee.find params[:id]
  end
end
