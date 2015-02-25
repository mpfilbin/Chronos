require 'grape-entity'

module Chronos
  module Time
    module V1
      module Entities
        class Translation< Grape::Entity
          expose :input, documentation: {type: String, desc: "Original input value"}
          expose :output, documentation: {type: DateTime, desc: "Translated DateTime object"}
        end
      end
    end
  end
end