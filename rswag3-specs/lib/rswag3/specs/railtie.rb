module Rswag3
  module Specs
    class Railtie < ::Rails::Railtie

      rake_tasks do
        load File.expand_path('../../../tasks/rswag3-specs_tasks.rake', __FILE__)
      end
    end
  end
end
