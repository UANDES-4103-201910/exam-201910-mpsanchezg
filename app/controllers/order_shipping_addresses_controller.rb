class OrderShippingAddressesController < ApplicationController
  before_action :set_order_shipping_address, only: [:show, :edit, :update, :destroy]

  # GET /order_shipping_addresses
  # GET /order_shipping_addresses.json
  def index
    @order_shipping_addresses = OrderShippingAddress.all
  end

  # GET /order_shipping_addresses/1
  # GET /order_shipping_addresses/1.json
  def show
  end

  # GET /order_shipping_addresses/new
  def new
    @order_shipping_address = OrderShippingAddress.new
  end

  # GET /order_shipping_addresses/1/edit
  def edit
  end

  # POST /order_shipping_addresses
  # POST /order_shipping_addresses.json
  def create
    @order_shipping_address = OrderShippingAddress.new(order_shipping_address_params)

    respond_to do |format|
      if @order_shipping_address.save
        format.html { redirect_to @order_shipping_address, notice: 'Order shipping address was successfully created.' }
        format.json { render :show, status: :created, location: @order_shipping_address }
      else
        format.html { render :new }
        format.json { render json: @order_shipping_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_shipping_addresses/1
  # PATCH/PUT /order_shipping_addresses/1.json
  def update
    respond_to do |format|
      if @order_shipping_address.update(order_shipping_address_params)
        format.html { redirect_to @order_shipping_address, notice: 'Order shipping address was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_shipping_address }
      else
        format.html { render :edit }
        format.json { render json: @order_shipping_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_shipping_addresses/1
  # DELETE /order_shipping_addresses/1.json
  def destroy
    @order_shipping_address.destroy
    respond_to do |format|
      format.html { redirect_to order_shipping_addresses_url, notice: 'Order shipping address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_shipping_address
      @order_shipping_address = OrderShippingAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_shipping_address_params
      params.require(:order_shipping_address).permit(:order_id, :address_id)
    end
end
