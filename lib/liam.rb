# frozen_string_literal: true

require 'liam/version'
require 'liam/consumer'
require 'liam/processor'
require 'liam/producer'
require 'liam/exceptions/uninitialized_message_processor_error'
require 'liam/exceptions/no_topics_in_config_file_error'
require 'liam/exceptions/unexpected_message_error'

module Liam
  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new($stdout).tap { |log| log.progname = self.name }
    end
  end
end
