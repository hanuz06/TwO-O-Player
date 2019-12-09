class Player
  attr_accessor :number_of_lives, :name
   
  def initialize(name)
    @name = name
    @number_of_lives = 3
  end

  def decrease
    @number_of_lives -= 1
  end
end

# andrey = Player.new("Andrey")
# puts andrey.number_of_lives
# puts andrey.decrease
# puts andrey.number_of_lives