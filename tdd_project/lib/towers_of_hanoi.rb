class Towers
    attr_reader :stacks

    def initialize
        @stacks = [[4,3,2,1],[],[]]
       

    end 

    def play_game 
        until won? do 
            p @stacks           
            input = self.input 
            input_2 = self.input_2
            move(input, input_2)
        end
        p 'you won'
    end

    def move(input, input_2)
        if @stacks[input_2].empty?   
            @stacks[input_2].push(@stacks[input].pop) 
        elsif @stacks[input_2].last > @stacks[input].last
            @stacks[input_2].push(@stacks[input].pop) 
        else  
            p 'Please try again' 
        end   
    end

    def input 
        puts "Pick a pile to select from"
        first = gets.chomp.to_i
    end

    def input_2
        puts "Pick a pile to put it in"
        second =  gets.chomp.to_i  
    end

    def won?
        @stacks[2] == [4,3,2,1]
    end
end



if $PROGRAM_NAME == __FILE__ 
    t = Towers.new 
    t.move 

end