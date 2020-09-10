class AdmissionsController < ApplicationController
  def new
    @patient = Patient.find_by id: params[:patient_id]
    @admission = @patient.admissions.build
    @admission.admit_time = Time.now
  end
  
  def create
    @patient = Patient.find_by id: params[:patient_id]
    @admission = @patient.admissions.build(admission_params)
    if @admission.save
      redirect_to @patient
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

private
  def admission_params
    params.require(:admission).permit(:consultant_id, :admit_time, :ward, :discharge_time)
  end

end
