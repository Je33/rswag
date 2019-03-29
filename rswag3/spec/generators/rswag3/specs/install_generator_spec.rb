require 'generator_spec'
require 'generators/rswag3/install/install_generator'

module Rswag3
  module Specs

    describe InstallGenerator do
      include GeneratorSpec::TestCase
      destination File.expand_path('../tmp', __FILE__)

      before(:all) do
        prepare_destination
        fixtures_dir = File.expand_path('../fixtures', __FILE__)
        FileUtils.cp_r("#{fixtures_dir}/config", destination_root)
        FileUtils.cp_r("#{fixtures_dir}/spec", destination_root)

        run_generator
      end

      it 'installs spec helper rswag3-specs' do
        assert_file('spec/swagger_helper.rb')
      end

      it 'installs initializer for rswag3-api' do
        assert_file('config/rswag3-api.rb')
      end

      it 'installs initializer for rswag3-ui' do
        assert_file('config/rswag3-ui.rb')
      end
    end
  end
end
