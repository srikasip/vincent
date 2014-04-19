class MobileServicesController < ApplicationController
  respond_to :json

  def get_villages
    @villages = Village.all
    respond_with(@villages)
  end

  def village_data
    @village = Village.find(params[:id])
    num_patients = Patient.where(village_id: @village.id).count

    respond_with(@villages)
  end

  def village_patients
    @village = Village.find(params[:id])
    @patients = Patient.where(village_id:@village.id)

    respond_with(@patients)
  end
end
