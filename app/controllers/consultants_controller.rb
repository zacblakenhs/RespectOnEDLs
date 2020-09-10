class ConsultantsController < ApplicationController
  def new
    @consultant = Consultant.new
  end

  def create
    @consultant = Consultant.new(consultant_params)
    if @consultant.save
      redirect_to consultants_url
    else
      render "new"
    end
  end
  
  def index
    @consultants = Consultant.all
  end

  private
  
  def consultant_params
    params.require(:consultant).permit(:title, :firstname, :surname, :specialty, :discipline)
  end
end
