module Fog
  module Compute
    class Serverlove
      class Real
        def load_standard_image(destination_image, source_image, conversion=nil)
          conversion_path = conversion.nil? ? '' : '/' + conversion
          request(:method => "post", :path => "/drives/#{destination_image}/image/#{source_image}#{conversion_path}", :expects => 204)
        end
      end
    end
  end
end
