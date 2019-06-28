puts "Let's guess the animals name. There are 10 questions!"

guess = ""
guess_count = 0
guess_limit = 10
out_of_question = false
point = 0
while !out_of_question
	secret_word = ["elephant", "shark", "monkey", "frog", "whale", "zebra", "chicken", "tiger", "lion", "hippopotamus"]
	choosen_word = secret_word[rand(secret_word.length)]
	question = choosen_word.split("").shuffle.join
	if guess_count < guess_limit
		puts "What animal is this?"
		puts question
		puts "Enter guess: "
		guess = gets.chomp
		if choosen_word.include? guess
			puts "Correct!"
			point += 1
		else
			puts "Incorrect!"
		end
		guess_count += 1
	else
		out_of_question = true
	end
end

puts "You get #{point} points"