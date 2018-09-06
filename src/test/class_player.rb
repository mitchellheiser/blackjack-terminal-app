class Player
    attr_accessor :name
    def initialize(player_name)
    @name = player_name
    end

    def player_name
      "#{name}"
    end 
  
end

 