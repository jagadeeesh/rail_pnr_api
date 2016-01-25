module RailPnrApi
  class Api
  	attr_accessor :url,:pub_key,:private_key

    def initialize(url,pub_key,private_key)  	
    	@url = url
    	@pub_key = pub_key
    	@private_key = private_key
    end

    def get_data(code,format='json')
    	@data = [code,format,@pub_key]*'.'.downcase
    end

    seach_codes = %w(station_by_code,station_by_name)

  end
end