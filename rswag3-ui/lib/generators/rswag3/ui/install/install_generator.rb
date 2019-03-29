require 'rails/generators'

module Rswag3
  module Ui

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def add_initializer
        template('rswag3-ui.rb', 'config/initializers/rswag3-ui.rb')
      end

      def add_routes
        route("mount Rswag3::Ui::Engine => '/api-docs'")
      end
    end
  end
end
