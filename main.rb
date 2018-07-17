require './question'
require './player'
require './answer_test'

class Main
    
    def initialize
        @players = [Player.new('Player 1'), Player.new('Player 2')] 
        @turnIndex = 0 
        @prevIndex = 0
        @question = Question.new
    end

    def start
        while !@players[0].game_over? && !@players[1].game_over? do
            previousPlayer = @players[@prevIndex]
            currentPlayer = @players[@turnIndex]
            @question = Question.new
            puts "#{currentPlayer.name}:  #{@question.question}"
            input = gets.chomp.to_i
            @test = Test.new(input, @question.answer, currentPlayer)
            @test.test
            currentPlayer.test(@test.valid)
            puts "P1: #{@players[0].lives}/3 vs #{@players[1].lives}/3"   
            if currentPlayer.lives > 0
                puts '------ NEW TURN -----'
                if @turnIndex == 0
                    @turnIndex = 1
                    @prevIndex = 0
                else
                    @turnIndex = 0
                    @prevIndex = 1
                end
            else
            puts "#{previousPlayer.name} wins with a score of #{previousPlayer.lives}/3 "
            puts '------ GAME OVER -----'
            puts 'Good bye!' 
            end
        end  
    end

end

q = Main.new
q.start

