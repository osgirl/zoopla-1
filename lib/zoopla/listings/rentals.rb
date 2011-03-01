module Zoopla
  
  module Listings
    
    class Rentals < API
      
      include Zoopla::Listings::Listing
      
      def initialize(*args)
        super(*args)
        @request = {:listing_status => 'rent'}
      end                         
      
    end
    
  end
  
end