require 'haddock_cli/version'
require 'thor'
require_relative 'quotes'

module HaddockCli
  class Error < StandardError; end

  class RailsCLI < Thor
    class_option :verbose, :type => :boolean, :aliases => '-v'

    desc 'quote', 'Default task: Get quote from Captain Haddock'
    def quote
      puts Quotes.get.sample
    end

    default_task :quote
  end

  RailsCLI.start(ARGV)
end
