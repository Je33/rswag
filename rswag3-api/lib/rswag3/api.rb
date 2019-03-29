require 'rswag3/api/configuration'
require 'rswag3/api/engine'

module Rswag3
  module Api
    def self.configure
      yield(config)
    end

    def self.config
      @config ||= Configuration.new
    end
  end
end
