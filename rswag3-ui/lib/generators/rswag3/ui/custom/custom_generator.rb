require 'rails/generators'

module Rswag3
  module Ui
    class CustomGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../lib/rswag3/ui', __FILE__)

      def add_custom_index
        copy_file('index.erb', 'app/views/rswag3/ui/home/index.html.erb')
      end
    end
  end
end
