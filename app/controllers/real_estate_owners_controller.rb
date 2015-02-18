class RealEstateOwnersController < ApplicationController
  before_action :set_real_estate_owner, only: [:show, :edit, :update, :destroy]

  # GET /real_estate_owners
  # GET /real_estate_owners.json
  def index
    @real_estate_owners = RealEstateOwner.all
  end

  # GET /real_estate_owners/1
  # GET /real_estate_owners/1.json
  def show
  end

  # GET /real_estate_owners/new
  def new
    @real_estate_owner = RealEstateOwner.new
  end

  # GET /real_estate_owners/1/edit
  def edit
  end

  # POST /real_estate_owners
  # POST /real_estate_owners.json
  def create
    @real_estate_owner = RealEstateOwner.new(real_estate_owner_params)

    respond_to do |format|
      if @real_estate_owner.save
        format.html { redirect_to @real_estate_owner, notice: 'Real estate owner was successfully created.' }
        format.json { render :show, status: :created, location: @real_estate_owner }
      else
        format.html { render :new }
        format.json { render json: @real_estate_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /real_estate_owners/1
  # PATCH/PUT /real_estate_owners/1.json
  def update
    respond_to do |format|
      if @real_estate_owner.update(real_estate_owner_params)
        format.html { redirect_to @real_estate_owner, notice: 'Real estate owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @real_estate_owner }
      else
        format.html { render :edit }
        format.json { render json: @real_estate_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /real_estate_owners/1
  # DELETE /real_estate_owners/1.json
  def destroy
    @real_estate_owner.destroy
    respond_to do |format|
      format.html { redirect_to real_estate_owners_url, notice: 'Real estate owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate_owner
      @real_estate_owner = RealEstateOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def real_estate_owner_params
      params.require(:real_estate_owner).permit(:firstname, :lastname, :secondlastname, :phone, :mobile, :email, :bank_account, :clabe, :bank_name, :notes)
    end
end
