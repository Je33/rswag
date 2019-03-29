require 'rails/generators'

module Rswag3
  module Api

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def add_initializer
        template('rswag3-api.rb', 'config/initializers/rswag3-api.rb')
      end

      def add_routes
        route("mount Rswag::Api::Engine => '/api-docs'")
      end
    end
  end
end
