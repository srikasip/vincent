class MobileServicesController < ApplicationController
  respond_to :json

  def get_villages
    @villages = Village.all

    respond_with(@villages) do |format|
      format.js {render :json => @villages}
    end
  end


  def village_data
    @village = Village.find(params[:id])
    num_patients = Patient.where(village_id: @village.id).count

    respond_with(@villages) do |format|
      format.js {render :json => num_patients}
    end

  end

  def village_patients
    @village = Village.find(params[:id])
    @patients = Patient.where(village_id:@village.id)

    respond_with(@patients) do |format|
      format.js {render :json => @patients}
    end
  end

end
