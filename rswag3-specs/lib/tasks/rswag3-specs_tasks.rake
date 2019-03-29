require 'rspec/core/rake_task'

namespace :rswag3 do
  namespace :specs do

    desc 'Generate Swagger JSON files from integration specs'
    RSpec::Core::RakeTask.new('swaggerize') do |t|
      t.pattern = 'spec/requests/**/*_spec.rb, spec/api/**/*_spec.rb, spec/integration/**/*_spec.rb'

      # NOTE: rspec 2.x support
      if Rswag3::Specs::RSPEC_VERSION > 2 && Rswag3::Specs.config.swagger_dry_run
        t.rspec_opts = [ '--format Rswag3::Specs::SwaggerFormatter', '--dry-run', '--order defined' ]
      else
        t.rspec_opts = [ '--format Rswag3::Specs::SwaggerFormatter', '--order defined' ]
      end
    end
  end
end
