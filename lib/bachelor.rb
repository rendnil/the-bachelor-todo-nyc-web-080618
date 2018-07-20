require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = nil
  data.each do |series, dataset|
    if series.to_s == season
      dataset.each do |contestant, traits|
        if contestant.values.include?("Winner") == true
          winner_name = contestant["name"].split(" ")[0]
        end  
      end 
    end
  end
 winner_name
end

def get_contestant_name(data, occupation)
  occupation_name = nil
  data.each do |series, dataset|
      dataset.each do |contestant, traits|
        if contestant.values.include?(occupation) == true
          occupation_name = contestant["name"]
      end 
    end
  end
 occupation_name 
  
end


def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
    data.each do |series, dataset|
      dataset.each do |contestant, traits|
        if contestant.values.include?(hometown) == true
          hometown_count +=1
      end 
    end
  end
 hometown_count 
end

def get_occupation(data, hometown)
  person_occupation = [ ]
  data.each do |series, dataset|
      dataset.each do |contestant, traits|
        if contestant.values.include?(hometown) == true
          person_occupation.push(contestant["occupation"])
      end 
    end
  end
 person_occupation[0]
end

def get_average_age_for_season(data, season)
  age_season_array =  [ ]
  data.each do |series, dataset|
    if series.to_s == season
      dataset.each do |contestant, traits|
        age_season_array.push(contestant["age"].to_f)
      end 
    end
  end
 age_sum = 0
   age_season_array.each do |age|
    age_sum = age_sum + age
   end
average_age = (age_sum / age_season_array.length.to_f ).round  
 
end
