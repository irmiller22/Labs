require 'debugger'

hashketball = {
	:team_1 => {
		:name => "San Fran Monohulls",
		:colors => ["red", "white"],
		:players => {
			:"James Worthy" => {
				:number => 23,
				:shoe_size => 15,
				:stats => {
					:points => 12,
					:rebounds => 15,
					:assists => 5,
					:blocks => 1,
					:dunks => 4
					} },

			:"Ian Worthy" => {
				:number => 99,
				:shoe_size => 9,
				:stats => {
					:points => 13,
					:rebounds => 10,
					:assists => 1,
					:blocks => 6,
					:dunks => 5
					} },

			:"Ryan Worthy" => {
				:number => 5,
				:shoe_size => 18,
				:stats => {
					:points => 22,
					:rebounds => 8,
					:assists => 8,
					:blocks => 3,
					:dunks => 5
					} },

			:"John Worthy" => {
				:number => 59,
				:shoe_size => 1,
				:stats => {
					:points => 4,
					:rebounds => 20,
					:assists => 9,
					:blocks => 5,
					:dunks => 20
					} },

			:"Raddy Worthy" => {
				:number => 10,
				:shoe_size => 15,
				:stats => {
					:points => 14,
					:rebounds => 1,
					:assists => 8,
					:blocks => 4,
					:dunks => 7
					} 
				}
			}
		},

	:team_2 => {
		:name => "Anaheim Catamarans",
		:colors => ["green", "black"],
		:players => {
			:"John Updike" => {
				:number => 19,
				:shoe_size => 18,
				:stats => {
					:points => 28,
					:rebounds => 15,
					:assists => 7,
					:blocks => 3,
					:dunks => 7
					} },

			:"Elvis Manheim" => {
				:number => 1,
				:shoe_size => 10,
				:stats => {
					:points => 12,
					:rebounds => 8,
					:assists => 5,
					:blocks => 7,
					:dunks => 3
					} },

			:"Truett Cathy" => {
				:number => 9,
				:shoe_size => 5,
				:stats => {
					:points => 9,
					:rebounds => 3,
					:assists => 3,
					:blocks => 1,
					:dunks => 0
				} 
			},

			:"Jeff Bezos" => {
				:number => 41,
				:shoe_size => 9,
				:stats => {
					:points => 8,
					:rebounds => 18,
					:assists => 9,
					:blocks => 3,
					:dunks => 5
				} 
			},

			:"Raddy Worthy" => {
				:number => 78,
				:shoe_size => 12,
				:stats => {
					:points => 18,
					:rebounds => 5,
					:assists => 3,
					:blocks => 2,
					:dunks => 1
				} 
			}
		}
	}	
}
	



def points(name, game)
	p_name = name.to_sym
	if game[:team_1][:players].include?(p_name)
		game[:team_1][:players][p_name][:stats][:points]
	elsif game[:team_2][:players].include?(p_name)
		game[:team_2][:players][p_name][:stats][:points]
	else
		puts "Player wasn't found in database."
	end
end

def shoe_size(name, game)
	p_name = name.to_sym
	if game[:team_1][:players].include?(p_name)
		game[:team_1][:players][p_name][:shoe_size]
	elsif game[:team_2][:players].include?(p_name)
		game[:team_2][:players][p_name][:shoe_size]
	else
		puts "Player wasn't found in database."
	end
end

def rebounds(name, game)
	p_name = name.to_sym
	if game[:team_1][:players].include?(p_name)
		game[:team_1][:players][p_name][:stats][:rebounds]
	elsif game[:team_2][:players].include?(p_name)
		game[:team_2][:players][p_name][:stats][:rebounds]
	else
		puts "Player wasn't found in database."
	end
end

def team_colors(team_name, game)
	if game[:team_1][:name] == team_name
		game[:team_1][:colors].join(" and ")
	elsif game[:team_2][:name] == team_name
		game[:team_2][:colors].join(" and ")
	end
end

def teams(game)
	"#{game[:team_1][:name]} vs. #{game[:team_2][:name]}"
end

def stats(name, game)
	p_name = name.to_sym
	if game[:team_1][:players].include?(p_name)
		game[:team_1][:players][p_name][:stats]
	elsif game[:team_2][:players].include?(p_name)
		game[:team_2][:players][p_name][:stats]
	else
		puts "Player wasn't found in database."
	end
end

def biggest_feet(game)
	placeholder, current = 0, ""
	game[:team_1][:players].each do |name, player|
		if player[:shoe_size] > placeholder
			current = name
			placeholder = player[:shoe_size]
		end
	end
	game[:team_2][:players].each do |name, player|
		if player[:shoe_size] > placeholder
			current = name
			placeholder = player[:shoe_size]
		end
	end
	current
end

def player_numbers(team_name, game)
	if game[:team_1][:name] == team_name
		"#{game[:team_1][:players][:number]}."
	elsif game[:team_2][:name] == team_name
		"#{game[:team_2][:players][:number]}."
	else
		"Invalid team name."
	end
end


# Points Scored
p points("Jeff Bezos", hashketball)

# Shoe Size
p shoe_size("Ian Worthy", hashketball)

# Team Colors
p team_colors("San Fran Monohulls", hashketball)

# Team Names
p teams(hashketball)

# Player Numbers
p player_numbers("San Fran Monohulls", hashketball)

# All Stats for a Player
p stats("Elvis Manheim", hashketball)

# Biggest Feet
p biggest_feet(hashketball)



# Rebounds for player with biggest feet
p rebounds(biggest_feet(hashketball), hashketball)

debugger


	 