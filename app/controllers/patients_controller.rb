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
  end

  def show
  end
end
