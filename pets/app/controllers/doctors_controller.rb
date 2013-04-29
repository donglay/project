class DoctorsController < ApplicationController

before_filter :authenticate_user!

  def index
    @doctors = Person.doctors
  end

end
