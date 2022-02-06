class CustomerMachinesController < ApplicationController
  before_action :set_customer_machine, only: %i[ show edit update destroy ]
  before_action :set_customer, only: %i[create index new]

  def index
    @customer_machines = CustomerMachine.all
  end

  # GET /customer_machines/1 or /customer_machines/1.json
  def show
  end

  # GET /customer_machines/new
  def new
    @customer_machine = @customer.customer_machines.new #CustomerMachine.new
  end

  # GET /customer_machines/1/edit
  def edit
  end

  def create
    @customer_machine = CustomerMachine.new(customer_machine_params)
    @customer_machine.customer=@customer
    respond_to do |format|
      if @customer_machine.save
        format.html { redirect_to edit_customer_url(@customer), notice: "Customer machine was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_machines/1 or /customer_machines/1.json
  def update
    respond_to do |format|
      #  raise @customer_machine.inspect
      if @customer_machine.update(customer_machine_params)
        #format.html { redirect_to customer_machine_url(@customer_machine), notice: "Customer machine was successfully updated." }
        format.html { redirect_to edit_customer_url(@customer_machine.customer_id), notice: "Customer machine was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_machines/1 or /customer_machines/1.json
  def destroy
    @customer_machine.destroy

    respond_to do |format|
      format.html { redirect_to customer_machines_url, notice: "Customer machine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_machine
      @customer_machine = CustomerMachine.find(params[:id])
    end
    def set_customer
      params.permit(:customer_id)
      @customer = Customer.find(params[:customer_id])
    end

    # Only allow a list of trusted parameters through.
    def customer_machine_params
      params.require(:customer_machine).permit(:machine_id, :serial_number)
      
    end
end
