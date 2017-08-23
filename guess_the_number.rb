puts 'My first Ruby program'

number = rand(10)

puts 'I got a number from 0 to 10. Could you guess it?'

guessing = true

while guessing
  guess = gets

  puts 'Too low' if guess.to_i < number
  puts 'Too high' if guess.to_i > number

  guessing = number.to_i != guess.to_i
end

puts "Congratulations! You made it!"
