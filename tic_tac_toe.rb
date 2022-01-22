# frozen_string_literal: true

require 'pry-byebug'

# Stores winning conditions
module Win
  WINNINGCONDITIONS = [1, 2, 3].freeze
end

# Creates a new player
class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# Contains all the game logic
class Game
end

# contains the elements to create a new board
class Board
  def board
    puts '1 | 2 | 3'
    puts '- + - + -'
    puts '4 | 5 | 6'
    puts '- + - + -'
    puts '7 | 8 | 9'
  end
end

# puts 'Enter player 1 name'
# player1 = Player.new(gets.chomp)
# puts 'Enter player 2 name'
# player2 = Player.new(gets.chomp)

# puts player1.name, player2.name

board = Board.new
puts board.board
