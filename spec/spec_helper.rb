$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'hello_ruby_calculator'

require 'simplecov'
SimpleCov.start do
    add_filter "/spec/"
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end

