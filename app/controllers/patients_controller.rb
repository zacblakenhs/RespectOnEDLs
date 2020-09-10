class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end
  
  def new
    @patient = Patient.new 
    @patient.nhsno = 1223456789 + 13*Patient.all.count
    @patient.surname = "TestPatient" + (Patient.all.count + 1).to_s
    @patient.dob = 70.years.ago
  end
  
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  def show
    @patient = Patient.find_by id: params[:id]
    @complete_admissions = @patient.admissions.where.not(discharge_time: nil)
    @active_admissions = @patient.admissions.where(discharge_time: nil)
  end

private
  def patient_params
    params.require(:patient).permit(:firstname, :surname, :preferred_name, :dob, :nhsno, :gender)
  end
end
