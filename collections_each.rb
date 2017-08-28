puts 'Print the contents of an array of sixteen numbers, four numbers at a time, using just each.'

a = 16.times.map { rand(100) }

a.each_index do |i|
  print a[i], ','
  puts if (i + 1) % 4 == 0
end
