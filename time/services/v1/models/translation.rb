require 'chronic'

module Chronos
  module Time
    module V1
      module Models
        class Translation
          attr_reader :input, :output

          def initialize (input)
            @input = input
            @output = Chronic.parse(input)
          end

        end
      end
    end
  end
end