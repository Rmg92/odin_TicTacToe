# frozen_string_literal: true

require 'pry-byebug'

# Stores winning conditions
module Win
  win = [1, 2, 3]
end

# Creates a new player
class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Game
end

puts 'Enter player 1 name'
player1 = Player.new(gets.chomp)
puts 'Enter player 2 name'
player2 = Player.new(gets.chomp)

puts player1.name, player2.name
