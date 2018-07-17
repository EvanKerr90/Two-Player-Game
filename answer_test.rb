class Test
    attr_accessor :input, :answer, :player, :valid

    def initialize(input, answer, player)
        @input = input
        @answer = answer
        @player = player    
    end

    def test
        if @input == @answer
            puts "#{player.name}: CORRECT!"
            @valid = true
        else
            puts "#{player.name}: WRONG!"
            @valid = false
        end
    end

end