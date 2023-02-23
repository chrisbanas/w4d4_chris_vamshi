require "tdd"
require "rspec"



describe "tdd" do

    describe "my_uniq" do
        let(:array) { [1, 2, 1, 3, 3] }

        before(:each) do
            expect_any_instance_of(Array).not_to receive(:uniq)
            expect_any_instance_of(Array).not_to receive(:uniq!)
        end

        it "Should take in an array and return a new array. Returns the unique elements in the order in which they first appeared:" do
            expect(array.my_uniq).to eq([1, 2, 3])
        end
    end

    describe "Array#two_sum" do
        let(:array) { [-1, 0, 2, -2, 1] } # => [[0, 4], [2, 3]]

        it "Finds all pairs of positions where the elements at those positions sum to zero. Ordering matters. Sorted with the smaller index before the bigger index" do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end

    end

    describe "my_transpose" do
        let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

        before(:each) do
            expect_any_instance_of(Array).not_to receive(:transpose)
        end

        it "Will convert an array between the row-oriented and column-oriented representations. You may assume square matrices for simplicity's sake." do
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7],[2, 5, 8]])
        end
    end





end
