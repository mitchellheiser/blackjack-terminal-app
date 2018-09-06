require 'test/unit'
require_relative 'fake_io'
require_relative 'welcome method'

class UserdataTest < Test::Unit::TestCase
      def welcome_test
        out = fake_io(['mitch']) do
            user = Userdata.new
            user.welcome
        end
        assert_includes(out,'welcome to the casino mitch')
      end
end
