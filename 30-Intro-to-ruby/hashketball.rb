require 'pry'

hello = 'Welcome to ruby'
puts hello

INSTRUCTOR = 'ix'
INSTRUCTOR = 'adam'

puts INSTRUCTOR

# JS DATA TYPE    |   Ruby Data types
# Object          | Hash {} 
# Big int
# Number           | Number Ints/Floats
# Array            | []
# Boolean          | Boolean
# String           | String
# Symbol           | Symbol
# Undefined 
# Null             | nil


# function sayName(name){
#   return name
# }

def say_name name 
  name
  'rose'
end




def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        {player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def get_players 
 game_hash[:home][:players] + game_hash[:away][:players]
end

def find_team team_name
#game_hash.find((team) => team.team_name == team )
  game_hash.values.find{|team| team[:team_name] == team_name}
end 

def num_points_scored name
  get_players.select{|player| player[:player_name] == name}[0][:points]
end 

def shoe_size name
 get_players.find{|player| player[:player_name] == name}[:shoe]
end

def team_colors team
  find_team(team)[:colors]
end

def team_names
  game_hash.values.map{|team| team[:team_name]}
end 

def player_numbers team_name
 team = find_team(team_name)
 players = team[:players]
 numbers = players.map{|player| player[:number]}
 numbers
end


def player_stats player_name
  player = get_players.find{|player| player[:player_name] == player_name}
  player.delete(:player_name)
  player
end 

def big_shoe_rebounds
  player = get_players.max_by{|player| player[:shoe]}
  player[:rebounds]
end 