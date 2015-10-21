class Person
  def initialize (first_name, last_name, full_name)
    @first_name
    @last_name
    @full_name
  end
end

class Player < Person
  attr_reader :health, :strength, :alive
  def initialize
    @health = 20
    @strength = 5
    @alive = true
  end
  def take_damage(attack_strength)
    @health = @health - attack_strength
  end
  def attack(player)
    take_damage(wizard.strength)
  end
end

class Knight < Player
  def initialize
    @health = 50
    @strength = 7
  end
end

class Wizard < Player
  def initialize
    @health = 20
    @strength = 75
  end
end


knight = Knight.new

wizard = Wizard.new

knight.attack(wizard)