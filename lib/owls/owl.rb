class Owl

  attr_accessor :name, :creepiness_factor, :stare_time, :head_rotation
	@@owl_count = 0

  def initialize name
    @name = name
    @creepiness_factor = rand.round(3) * 100
    @stare_time = (11 * @creepiness_factor).to_i
    @head_rotation = ((20*@creepiness_factor)%360).to_i
    @@owl_count += 1
  end

  def self.owl_count
    @@owl_count
  end

  def greeting
    puts "Hi my name is #{@name}."
    puts "My creepiness factor is #{@creepiness_factor}%."
    puts "I can stare at you for #{@stare_time} seconds."
    puts "I can rotate my head #{@head_rotation} degrees."
  end

  def creepy?
    @creepiness_factor != 0
  end

  def skilled_rotator?
    @head_rotation > 180

  def pro_starer?
    @stare_time > 500
  end

  def level_up!
    @creepiness_factor += 0.5 if @creepiness_factor <= 99.5
    @stare_time = (11 * @creepiness_factor).to_i
    @head_rotation = ((20*@creepiness_factor)%360).to_i
    puts "New Creepiness Factor: #{@creepiness_factor}%"
  end

  def stare
    puts "#{@name} is staring at you..."
    sleep(@stare_time)
  end

end