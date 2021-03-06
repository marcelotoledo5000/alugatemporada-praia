class HomeController < ApplicationController
  def index
    @properties = Property.order(created_at: :desc).limit(10)
    @locations = ["Todos"]
    
    Property.select("property_location").distinct.each do |p|
      @locations << p.property_location
    end
  end
end
