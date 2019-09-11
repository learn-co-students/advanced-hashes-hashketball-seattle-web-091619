require "pry"




def game_hash
  team_hash = {
    :home => {:team_name => 'Brooklyn Nets',:colors => ['Black','White'],:players => [
      {"Alan Anderson" => {
      :number => 0 ,
      :shoe => 16 ,
      :points => 22 ,
      :rebounds => 12 , 
      :assists => 12 ,
      :steals => 3 , 
      :blocks => 1 ,
      :slam_dunks => 1 ,    } },
      {"Reggie Evans" => {
      :number => 30 ,
      :shoe => 14 ,
      :points => 12 ,
      :rebounds => 12 , 
      :assists => 12 ,
      :steals => 12 , 
      :blocks => 12 ,
      :slam_dunks => 7 ,    }},
      {"Brook Lopez" => {
      :number => 11 ,
      :shoe => 17 ,
      :points => 17 ,
      :rebounds => 19 , 
      :assists => 10 ,
      :steals => 3 , 
      :blocks => 1 ,
      :slam_dunks => 15 ,   }},
      {"Mason Plumlee" => {
      :number => 1 ,
      :shoe => 19 ,
      :points => 26 ,
      :rebounds => 11 , 
      :assists => 6 ,
      :steals => 3 , 
      :blocks => 8 ,
      :slam_dunks => 5 ,   }},
      {"Jason Terry" => {
      :number => 31 ,
      :shoe => 15 ,
      :points => 19 ,
      :rebounds => 2 , 
      :assists => 2 ,
      :steals => 4 , 
      :blocks => 11 ,
      :slam_dunks => 1 ,   }}
      ]} , 
    
    
    :away => {:team_name => 'Charlotte Hornets',:colors => ['Turquoise','Purple'],
    
    
    :players => [
      {"Jeff Adrien" => {
      :number => 4 ,
      :shoe => 18 ,
      :points => 10 ,
      :rebounds => 1 , 
      :assists => 1 ,
      :steals => 2 , 
      :blocks => 7 ,
      :slam_dunks => 2 ,    } },
      {"Bismack Biyombo" => {
      :number => 0 ,
      :shoe => 16 ,
      :points => 12 ,
      :rebounds => 4 , 
      :assists => 7 ,
      :steals => 22 , 
      :blocks => 15 ,
      :slam_dunks => 10 ,    }},
      {"DeSagna Diop" => {
      :number => 2 ,
      :shoe => 14 ,
      :points => 24 ,
      :rebounds => 12 , 
      :assists => 12 ,
      :steals => 4 , 
      :blocks => 5 ,
      :slam_dunks => 5 ,   }},
      {"Ben Gordon" => {
      :number => 8 ,
      :shoe => 15 ,
      :points => 33 ,
      :rebounds => 3 , 
      :assists => 2 ,
      :steals => 1 , 
      :blocks => 1 ,
      :slam_dunks => 0 ,   }},
      {"Kemba Walker" => {
      :number => 33 ,
      :shoe => 15 ,
      :points => 6 ,
      :rebounds => 12 , 
      :assists => 12 ,
      :steals => 7 , 
      :blocks => 5 ,
      :slam_dunks => 12 ,   }}
      ],}
  }
  
  team_hash
  
end


def num_points_scored(name)

hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|  
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)          
          if name == player_name            
            return hash[team_field][:players][index][player_name][:points]
          end          
        } 
    }
    end    
  }
}



end
  
def shoe_size(name)

hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)          
          if name == player_name            
            return hash[team_field][:players][index][player_name][:shoe]
          end          
        } 
    }
    end    
  }
}

end

def team_colors(name)

hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if name == values
    return hash[team_field][:colors]
      
    end    
  }
}

end

def team_names

hash = game_hash
team_name_array = []

team_name_array << game_hash[:home][:team_name]
team_name_array << game_hash[:away][:team_name]
team_name_array


end

def player_numbers(name)
player_number_array = []
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)          
            if hash[team_field][:team_name] == name           
              player_number_array << hash[team_field][:players][index][player_name][:number]
            end
        } 
    }
    end    
  }
}
return player_number_array
end


def player_stats(name)

hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)          
          if name == player_name            
            return hash[team_field][:players][index][player_name]
          end          
        } 
    }
    end    
  }
}

end

def big_shoe_rebounds
shoe_counter = 0
rebound_number = 0
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)                 
              if hash[team_field][:players][index][player_name][:shoe] > shoe_counter
                shoe_counter = hash[team_field][:players][index][player_name][:shoe]
                rebound_number = hash[team_field][:players][index][player_name][:rebounds]
                
              end
        } 
    }
    end    
  }
}
return rebound_number

end

def most_points_scored
points_counter = 0
mr_buckets = 0
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)                 
              if hash[team_field][:players][index][player_name][:points] > points_counter
                
                points_counter = hash[team_field][:players][index][player_name][:points]
                
                mr_buckets = player_name
                
              end
        } 
    }
    end    
  }
}
return mr_buckets

end

def winning_team
home_points = []
away_points = []
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)
          if team_field == :home                 
              home_points << hash[team_field][:players][index][player_name][:points]
          else
              away_points << hash[team_field][:players][index][player_name][:points]
          end
        } 
    }
    end    
  }
}
home = home_points.inject(0){|sum,x| sum + x }
away = away_points.inject(0){|sum,x| sum + x }
if home > away
  return "Brooklyn Nets"
else
  return "Charlotte Hornets"
end
end

def player_with_longest_name

longest_name = ' '
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)          
            if player_name.size > longest_name.size        
              longest_name = player_name
            end
        } 
    }
    end    
  }
}
return longest_name
end


def long_name_steals_a_ton?
steals_counter = 0
swiper = nil
hash = game_hash
hash.each{|team_field,team_info|
  team_info.each{|team_attribute, values|
    if team_attribute == :players
      values.each{|player_hash_array|
        player_hash_array.each_key{|player_name|
          index = values.index(player_hash_array)                 
              if hash[team_field][:players][index][player_name][:steals] > steals_counter
                
                steals_counter = hash[team_field][:players][index][player_name][:steals]
                
                swiper = player_name
                
              end
        } 
    }
    end    
  }
}
return player_with_longest_name == swiper

end



























