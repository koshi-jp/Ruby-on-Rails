ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  describe '四則演算' do
  context '足し算' do
    it '1 + 1 は 2 になる' do
      expect(1 + 1).to eq 2
    end
  end
  context '足し算' do
    it '1 + 1 は 2 になる' do
      expect(1 + 1).to eq 3
    end
  end
  end
  # Add more helper methods to be used by all tests here...
end
