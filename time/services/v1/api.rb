require_relative '../v1/entities/translation'
require_relative '../v1/models/translation'
include Chronos::Time::V1

module Chronos
  module Time
    module V1
      class API < Grape::API
        version 'v1', using: :path
        format :json

        resource :time do
          desc "Translates a given plaintext statement into a DateTime object."
          params do
            requires :input, allow_blank: false
          end
          post :translations do
            present Models::Translation.new(params[:input]), with: Entities::Translation
          end
        end

      end
    end
  end
end