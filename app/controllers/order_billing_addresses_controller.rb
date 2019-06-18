class OrderBillingAddressesController < ApplicationController
  before_action :set_order_billing_address, only: [:show, :edit, :update, :destroy]

  # GET /order_billing_addresses
  # GET /order_billing_addresses.json
  def index
    @order_billing_addresses = OrderBillingAddress.all
  end

  # GET /order_billing_addresses/1
  # GET /order_billing_addresses/1.json
  def show
  end

  # GET /order_billing_addresses/new
  def new
    @order_billing_address = OrderBillingAddress.new
  end

  # GET /order_billing_addresses/1/edit
  def edit
  end

  # POST /order_billing_addresses
  # POST /order_billing_addresses.json
  def create
    @order_billing_address = OrderBillingAddress.new(order_billing_address_params)

    respond_to do |format|
      if @order_billing_address.save
        format.html { redirect_to @order_billing_address, notice: 'Order billing address was successfully created.' }
        format.json { render :show, status: :created, location: @order_billing_address }
      else
        format.html { render :new }
        format.json { render json: @order_billing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_billing_addresses/1
  # PATCH/PUT /order_billing_addresses/1.json
  def update
    respond_to do |format|
      if @order_billing_address.update(order_billing_address_params)
        format.html { redirect_to @order_billing_address, notice: 'Order billing address was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_billing_address }
      else
        format.html { render :edit }
        format.json { render json: @order_billing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_billing_addresses/1
  # DELETE /order_billing_addresses/1.json
  def destroy
    @order_billing_address.destroy
    respond_to do |format|
      format.html { redirect_to order_billing_addresses_url, notice: 'Order billing address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_billing_address
      @order_billing_address = OrderBillingAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_billing_address_params
      params.require(:order_billing_address).permit(:order_id, :address_id)
    end
end
