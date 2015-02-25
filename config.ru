require 'rack/cors'
require 'grape'
require 'grape-entity'
require_relative 'time/service'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :put, :post, :delete, :options, :head, :path]
  end
end

run Rack::Cascade.new [Chronos::Time::Service]