require 'generator_spec'
require 'generators/rswag3/ui/custom/custom_generator'

module Rswag3
  module Ui

    describe CustomGenerator do
      include GeneratorSpec::TestCase
      destination File.expand_path('../tmp', __FILE__)

      before(:all) do
        prepare_destination
        run_generator
      end

      it 'creates a local version of index.html.erb' do
        assert_file('app/views/rswag3/ui/home/index.html.erb')
      end
    end
  end
end
