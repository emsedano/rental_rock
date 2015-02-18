class BillingDataController < ApplicationController
  before_action :set_billing_datum, only: [:show, :edit, :update, :destroy]

  # GET /billing_data
  # GET /billing_data.json
  def index
    @billing_data = BillingDatum.all
  end

  # GET /billing_data/1
  # GET /billing_data/1.json
  def show
  end

  # GET /billing_data/new
  def new
    @billing_datum = BillingDatum.new
  end

  # GET /billing_data/1/edit
  def edit
  end

  # POST /billing_data
  # POST /billing_data.json
  def create
    @billing_datum = BillingDatum.new(billing_datum_params)

    respond_to do |format|
      if @billing_datum.save
        format.html { redirect_to @billing_datum, notice: 'Billing datum was successfully created.' }
        format.json { render :show, status: :created, location: @billing_datum }
      else
        format.html { render :new }
        format.json { render json: @billing_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_data/1
  # PATCH/PUT /billing_data/1.json
  def update
    respond_to do |format|
      if @billing_datum.update(billing_datum_params)
        format.html { redirect_to @billing_datum, notice: 'Billing datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing_datum }
      else
        format.html { render :edit }
        format.json { render json: @billing_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_data/1
  # DELETE /billing_data/1.json
  def destroy
    @billing_datum.destroy
    respond_to do |format|
      format.html { redirect_to billing_data_url, notice: 'Billing datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_datum
      @billing_datum = BillingDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_datum_params
      params.require(:billing_datum).permit(:fiscal_person, :rfc, :fiscal_name, :address1, :address2, :neiborghood, :county, :, :country_id, :zipcode)
    end
end
