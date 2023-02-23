
class Array

    def my_uniq

        hash = {}
        self.each { |ele| hash[ele] = true }
        hash.keys

    end


    def two_sum

        pairs = []

        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|
                pairs << [i, j] if self[i] + self[j] == 0
            end
        end
        pairs
    end

    def my_transpose
        arr = Array.new(self.length) {Array.new(self.length)}

        (0...self.length).each do |i|
            (0...self.length).each do |j|
                arr[j][i] = self[i][j]
            end
        end
        arr
    end

end
