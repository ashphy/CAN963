# -*- encoding : utf-8 -*-
require 'yaml'
require 'thor'

class Can963 < Thor

  map '-v' => :version
  map '--version' => :version

  def initialize(args = [], options = {}, config = {})
    self.config
    super
  end

  desc 'version', 'Check CAN963 version'
  def version
    puts @config['version']
  end

  no_commands do
    # @return [Hash] content of config/series.yml
    def config
      unless @config
        config_file = "#{File.dirname(__FILE__)}/../config/attendance.yml"
        @config = YAML.load_file(config_file)
      end
      @config
    end
  end
end

Can963.start(ARGV)