class ContractorsController < ApplicationController
  before_action :set_contractor, only: [:show, :update, :destroy]

  # GET /contractors
  def index
    @contractors = Contractor.all

    render json: @contractors
  end

  # GET /contractors/1
  def show
    render json: @contractor
  end

  # POST /contractors
  def create
    @contractor = Contractor.new(contractor_params)

    if @contractor.save
      render json: @contractor, status: :created, location: @contractor
    else
      render json: @contractor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contractors/1
  def update
    if @contractor.update(contractor_params)
      render json: @contractor
    else
      render json: @contractor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contractors/1
  def destroy
    @contractor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor
      @contractor = Contractor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contractor_params
      params.require(:contractor).permit(:company, :first_name, :last_name, :street_address, :city, :state, :zip, :phone, :email, :specilization, :contractor_license_number, :insurance, :insurance_type, :coverage, :experience, :management_experience, :employees, :projects, :past_projects, :job_capacity, :recent_jobs, :sow, :job_address, :job_bid, :materials_labor, :warranties, :warranties_length, :sub_contractor, :licensed_insured, :electrician, :plumber, :certificates_licenses, :bbb_coc, :bankruptcy, :communication, :clean, :lien_waiver, :references, :lead_source)
    end
end
