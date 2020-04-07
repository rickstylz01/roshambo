puts "Welcome to RickStyles Rock, Paper, Scissors game!"

#scores
playerScore = 0;
compScore = 0;

until playerScore == 5 || compScore == 5
	puts "Choose your weapon: rock, paper, or scissors."

	player = gets.chomp.downcase
	comp = ["rock", "paper", "scissors"].sample

	#player wins
	if (player == "rock" && comp == "scissors") || (player == "paper" && comp == "rock") || (player == "scissors" && comp == "paper")
		puts "Player wins!"
		playerScore += 1;

	#computer wins
	elsif (player == "rock" && comp == "rock") || (player == "paper" && comp == "paper") || (player == "scissors" && comp == "scissors")
		puts "Draw. No points awarded."

	else
		compScore += 1;
		puts "Computer wins!"
	end

	#resulted scores
	puts "Player score #{playerScore}"
	puts "Computer score #{compScore}"

	#resulted choices
	puts "Player chose #{player}"
	puts "Computer chose #{comp}"
end

#Tell who wins
puts playerScore > compScore ? ("YOU WIN!") : ("COMPUTER WINS")
