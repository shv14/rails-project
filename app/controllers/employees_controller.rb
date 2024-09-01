# class EmployeesController < ApplicationController
# end


# app/controllers/employees_controller.rb

class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
    def index
      @employees = Employee.all
    end
  
    def show
    end
  
    def new
      @employee = Employee.new
    end
  
    def create
      @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to @employee, notice: 'Employee was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @employee.update(employee_params)
        redirect_to @employee, notice: 'Employee was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @employee.destroy
      redirect_to employees_path, notice: 'Employee was successfully deleted.'
    end
    
  
    private
      def set_employee
        @employee = Employee.find(params[:id])
      end
  
      def employee_params
        params.require(:employee).permit(:name, :position, :email, :salary)
      end
  end
  