class Player
    attr_accessor :lives, :name, :end

    def initialize(name)
        @lives = 3 
        @name = name
        @end
    end

    def test(valid)
        if valid == false
            @lives -= 1
        end
    end

    def game_over?
        if @lives <= 0
            @end = true
        end
    end


end




