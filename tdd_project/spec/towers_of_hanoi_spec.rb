require 'rspec'
require 'towers_of_hanoi'
require 'byebug'

describe Towers do  
    subject(:towers) {Towers.new}

    describe '#initialize' do  
        it 'sets 3 arrays which represents the piles of discs, set stack_1 with discs in order by size, and stacks 2 and 3 to empty' do 
            expect(towers.stacks).to eq([[4,3,2,1],[],[]])
        end
    end



    describe "#move" do 
        it 'prompts user (using gets) to select disk from pile and what pile to place it in, and continue looping until they have succeeded in moving all disks to final pile. Once final pile is correctly filled, print "you win" ' do 
            towers.move(0,1)
            expect(towers.stacks).to eq([[4,3,2],[1],[]])
        end

        
    end

    describe "#won?" do 
        it 'checks to see if user put all disks in last pile in correct order' do 
            towers.instance_variable_set(:@stacks, [[],[],[4,3,2,1]])
            expect(towers.won?).to eq(true)
        end
    end
end