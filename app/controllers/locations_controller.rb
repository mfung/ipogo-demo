class LocationsController < ApplicationController
  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => :distance)
    else
      @locations = Location.all
    end
  end

  def show
    @location = Location.find(params[:id])
    options = {'q'=>'high', 'category'=>'school', 'radius'=>10}
    @places = SimpleGeo::Client.get_places(@location.latitude, @location.longitude, options)
    
    @pois = []
    
    @places[:features].each do |place| 
      @pois << Poi.new(:name => place[:properties][:name], :latitude => place[:geometry][:coordinates][0], :longitude => place[:geometry][:coordinates][1], :address => place[:properties][:address],:zip => place[:properties][:postcode],:city => place[:properties][:city],:country => place[:properties][:country])
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to @location, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, :notice  => "Successfully updated location."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url, :notice => "Successfully destroyed location."
  end
end