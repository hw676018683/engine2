module Locomotive
  module LiquidFilters
    module Decode

      def decode(input, fields = nil)
        URI.decode(input)
      end

    end
  end
end