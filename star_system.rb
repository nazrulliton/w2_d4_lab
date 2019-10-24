class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
  @name = name
  @planets = planets

end


def planet_names
#   result = []
# @planets.each{|planet| result.push( planet.name)}
# return result
# end
@planets.map{|planet| planet.name}


end

def get_planet_by_name(name)
@planets.find{|planet| planet.name == name}

end

def get_largest_planet
@planets.max_by do |planet| planet.diameter

end
end

def get_smallest_planet
  @planets.min_by do |planet| planet.diameter

  end
  end


def get_planets_with_no_moons
@planets.find_all{|planet| planet.number_of_moons == 0}

end

def get_planets_with_more_moons(number)
  result =@planets.find_all{|planet| planet.number_of_moons > number}
  result.map{|planet| planet.name}
end



def get_number_of_planets_closer_than(distance)
@planets.find_all{| planet| planet.distance_from_sun < distance}.length

end

def get_total_number_of_moons
  result = @planets.map{|planet| planet.number_of_moons}.reduce{|total, planet| total + planet}

  p result # @planets.find_all{|planet.number_of_moons| planet}

end

def get_planet_names_sorted_by_increasing_distance_from_sun
  result = @planets.sort_by{  |planet| planet.distance_from_sun
  }
  result.map{|planet| planet.name}



end
def get_planet_names_sorted_by_size_decreasing

  result = @planets.sort_by{  |planet| planet.diameter
  }
  result.map{|planet| planet.name}.reverse



end


end
