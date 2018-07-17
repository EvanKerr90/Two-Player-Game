class Question
    attr_reader :question, :answer

    def initialize
        @first = rand(21)
        @second = rand(21)
        @question = "What does #{@first} plus #{@second} equal?"
        @answer = @first + @second
    end

end
