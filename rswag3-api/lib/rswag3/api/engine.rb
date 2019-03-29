require 'rswag3/api/middleware'

module Rswag3
  module Api
    class Engine < ::Rails::Engine
      isolate_namespace Rswag3::Api

      initializer 'rswag3-api.initialize' do |app|
        middleware.use Rswag3::Api::Middleware, Rswag3::Api.config
      end
    end
  end
end
