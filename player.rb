class Player
    attr_accessor :lives, :name

    def initialize(name)
        @lives = 3 
        @name = name
    end

    def test(valid)
        if valid == false
            @lives -= 1
        end
    end

    def game_over?
        if @lives <= 0
            true
        end
    end


end




