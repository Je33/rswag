require 'rails/generators'

module Rswag3
  class InstallGenerator < Rails::Generators::Base

    def install_components
      generate 'rswag3:specs:install'
      generate 'rswag3:api:install'
      generate 'rswag3:ui:install'
    end
  end
end
