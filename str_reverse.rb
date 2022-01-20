class StrReverse
    def initialize(str)
        @str = str
    end

    def str_reverse
        # @str.split(//).reduce{|x,y| y+x}
        output = ""
        index = @str.length - 1
        loop do
            output << @str[index]
            index -= 1
            break if index < 0
        end
        puts "The reversed string for the original '#{@str}' without using ruby inbuilt method is '#{output}'"
    end
end

StrReverse.new("oink oink").str_reverse