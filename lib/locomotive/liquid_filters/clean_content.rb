module Locomotive
  module LiquidFilters
    module CleanContent

      def clean_content(input, fields = nil)
        Nokogiri::HTML(input).text
      end

    end
  end
end