class DoctorsController < ApplicationController

before_filter :authenticate_user!

  def index
    @doctors = Person.doctors
  end

  def show

  	@doctor = Person.find params[:id]
  	respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doctor }
    end
  end

end
