require 'rswag3/ui/middleware'

module Rswag3
  module Ui
    class Engine < ::Rails::Engine
      isolate_namespace Rswag3::Ui

      initializer 'rswag3-ui.initialize' do |app|
        middleware.use Rswag3::Ui::Middleware, Rswag3::Ui.config
      end

      rake_tasks do
        load File.expand_path('../../../tasks/rswag3-ui_tasks.rake', __FILE__)
      end
    end
  end
end
