word = ARGV[0]
filename = ARGV[1]

file = File.new(filename, 'r')

lineNumber = 1

File.open(filename, "r") do |infile|
    while (line = infile.gets)
        puts "#{lineNumber}: #{line}" if line.include? word
        lineNumber = lineNumber + 1
    end
end
