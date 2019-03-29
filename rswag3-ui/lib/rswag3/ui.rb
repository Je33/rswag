require 'rswag3/ui/configuration'
require 'rswag3/ui/engine'

module Rswag3
  module Ui
    def self.configure
      yield(config)
    end

    def self.config
      @config ||= Configuration.new
    end
  end
end
