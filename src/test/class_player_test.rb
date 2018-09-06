require 'test/unit'
require_relative 'class_player'

class PlayerTest < Test::Unit::TestCase

    def test_player_name
        player = Player.new("mitch")
        assert_equal("mitch",player.name)
    end


end 