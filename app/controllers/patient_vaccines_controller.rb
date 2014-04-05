class PatientVaccinesController < ApplicationController
  before_action :set_patient_vaccine, only: [:show, :edit, :update, :destroy]

  # GET /patient_vaccines
  # GET /patient_vaccines.json
  def index
    @patient_vaccines = PatientVaccine.all
  end

  # GET /patient_vaccines/1
  # GET /patient_vaccines/1.json
  def show
  end

  # GET /patient_vaccines/new
  def new
    @patient_vaccine = PatientVaccine.new
  end

  # GET /patient_vaccines/1/edit
  def edit
  end

  # POST /patient_vaccines
  # POST /patient_vaccines.json
  def create
    @patient_vaccine = PatientVaccine.new(patient_vaccine_params)

    respond_to do |format|
      if @patient_vaccine.save
        format.html { redirect_to @patient_vaccine, notice: 'Patient vaccine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient_vaccine }
      else
        format.html { render action: 'new' }
        format.json { render json: @patient_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_vaccines/1
  # PATCH/PUT /patient_vaccines/1.json
  def update
    respond_to do |format|
      if @patient_vaccine.update(patient_vaccine_params)
        format.html { redirect_to @patient_vaccine, notice: 'Patient vaccine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_vaccines/1
  # DELETE /patient_vaccines/1.json
  def destroy
    @patient_vaccine.destroy
    respond_to do |format|
      format.html { redirect_to patient_vaccines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_vaccine
      @patient_vaccine = PatientVaccine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_vaccine_params
      params.require(:patient_vaccine).permit(:patient_id, :vaccine_id)
    end
end
