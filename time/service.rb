require_relative 'services/v1/api'
module Chronos
  module Time
    class Service < Grape::API
      mount Chronos::Time::Service::API
    end
  end
end