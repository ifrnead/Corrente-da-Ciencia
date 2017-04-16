class Locator

  def self.locate(params)
    Geokit::Geocoders::GoogleGeocoder.geocode(params)
  end

end
