# frozen_string_literal: true

require "active_support"
require "active_support/deprecation"

# A module to test deprecation warnings
module DeprecationTest
  class Error < StandardError; end

  def self.deprecator
    @deprecator ||= ActiveSupport::Deprecation.new("1.0", "deprecation_test")
  end

  def self.called_from_within_this_gem?
    # caller_locations[0] is the method that calls this function, we want to check
    # the caller of THAT method so we check caller_locations[1]
    path = caller_locations[1].path
    path.include?("/lib/deprecation_test.rb") || path.include?("/lib/deprecation_test/")
  end
end

require_relative "deprecation_test/my_class"
require_relative "deprecation_test/my_private_class"
require_relative "deprecation_test/version"
