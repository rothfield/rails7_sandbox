class CustomerMachinesController < ApplicationController
  before_action :set_customer_machine, only: %i[show edit update destroy]
  before_action :set_customer, only: %i[create index new]

  def index
    @customer_machines = CustomerMachine.all
  end

  def show
    @customer = @customer_machine.customer
  end

  def new
    @customer_machine = @customer.customer_machines.new # CustomerMachine.new
  end

  def edit
    @customer = @customer_machine.customer
  end

  def create
    @customer_machine = CustomerMachine.new(customer_machine_params)
    @customer_machine.customer = @customer
    if @customer_machine.save
      notice = "Customer machine was successfully created."
      redirect_to edit_customer_url(@customer), notice
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @customer_machine.update(customer_machine_params)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @customer_machine.destroy
    notice = "Customer machine was successfully destroyed."

    redirect_to customer_machines_url, notice: notice
  end

  private

  def set_customer_machine
    @customer_machine = CustomerMachine.find(params[:id])
  end

  def set_customer
    params.require(:customer_id)
    @customer = Customer.find(params[:customer_id])
  end

  def customer_machine_params
    params.require(:customer_machine).permit(:machine_id, :serial_number)
  end
end
