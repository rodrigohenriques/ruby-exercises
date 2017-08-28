puts 'Print the contents of an array of sixteen numbers, four numbers at a time, using each slice.'

a = 16.times.map { rand(100) }

a.each_slice(4) do |slice|
  puts slice.inspect
end
