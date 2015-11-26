require 'test_helper'

class WineTest < ActiveSupport::TestCase
  test 'wine attributes must not be empty' do
    wine = Wine.new
    assert wine.invalid?
    assert wine.errors[:name].any?
    # TODO: complete this test
  end
end
