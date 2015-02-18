class OwnerInvoicingDataController < ApplicationController
  before_action :set_owner_invoicing_datum, only: [:show, :edit, :update, :destroy]

  # GET /owner_invoicing_data
  # GET /owner_invoicing_data.json
  def index
    @owner_invoicing_data = OwnerInvoicingDatum.all
  end

  # GET /owner_invoicing_data/1
  # GET /owner_invoicing_data/1.json
  def show
  end

  # GET /owner_invoicing_data/new
  def new
    @owner_invoicing_datum = OwnerInvoicingDatum.new
  end

  # GET /owner_invoicing_data/1/edit
  def edit
  end

  # POST /owner_invoicing_data
  # POST /owner_invoicing_data.json
  def create
    @owner_invoicing_datum = OwnerInvoicingDatum.new(owner_invoicing_datum_params)

    respond_to do |format|
      if @owner_invoicing_datum.save
        format.html { redirect_to @owner_invoicing_datum, notice: 'Owner invoicing datum was successfully created.' }
        format.json { render :show, status: :created, location: @owner_invoicing_datum }
      else
        format.html { render :new }
        format.json { render json: @owner_invoicing_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_invoicing_data/1
  # PATCH/PUT /owner_invoicing_data/1.json
  def update
    respond_to do |format|
      if @owner_invoicing_datum.update(owner_invoicing_datum_params)
        format.html { redirect_to @owner_invoicing_datum, notice: 'Owner invoicing datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_invoicing_datum }
      else
        format.html { render :edit }
        format.json { render json: @owner_invoicing_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_invoicing_data/1
  # DELETE /owner_invoicing_data/1.json
  def destroy
    @owner_invoicing_datum.destroy
    respond_to do |format|
      format.html { redirect_to owner_invoicing_data_url, notice: 'Owner invoicing datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_invoicing_datum
      @owner_invoicing_datum = OwnerInvoicingDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_invoicing_datum_params
      params.require(:owner_invoicing_datum).permit(:owner_id, :fiscal_person, :rfc, :fiscal_name, :address1, :address2, :neiborghood, :county, :, :country_id, :zipcode)
    end
end
