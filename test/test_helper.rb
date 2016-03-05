require 'minitest/autorun'

ENV['TEST'] ||= 'true'

$LOAD_PATH.unshift File.expand_path('../../solutions', __FILE__)
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)


Dir.glob('test/support/**/*.rb').each { |file| require File.expand_path(file) }

class TestCase < Minitest::Test
  extend Minitest::Spec::DSL
  
  FIXTURES_PATH = 'test/fixtures'

  def fixture_path(fixture_name)
    File.expand_path("#{FIXTURES_PATH}/#{fixture_name}")
  end

end
