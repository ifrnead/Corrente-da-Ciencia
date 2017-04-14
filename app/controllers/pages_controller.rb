class PagesController < ApplicationController
  def index
    @page_active = __method__
    #location = Geokit::Geocoders::IpGeocoder.geocode(@ip)
    #if location.success

    @user = Usuario.new
  end

  def what
    @page_active = __method__
  end

  def who
    @page_active = __method__
  end

  def results
    @page_active = __method__
    @users = Usuario.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      lat = user.latitude
      lng = user.longitude
      if lat && lng
        marker.lat lat
        marker.lng lng
      end
    end
  end
end
