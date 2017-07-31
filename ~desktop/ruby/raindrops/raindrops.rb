module Raindrops
  
  def self.convert num
  	sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    noise = sounds.keys.inject('') do | total , key| 
      num % key == 0 ? total + sounds[key] : total
    end

    noise.empty? ? num.to_s : noise
  end
end

module BookKeeping
	VERSION = 3
end