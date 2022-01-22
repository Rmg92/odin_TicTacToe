# frozen_string_literal: true

require 'pry-byebug'

# Stores winning conditions
module Win
  WINNINGCOMBINATIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
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

# Contains the elements to create a new board
class Board
  def initialize
    @pos1 = '1'
    @pos2 = '2'
    @pos3 = '3'
    @pos4 = '4'
    @pos5 = '5'
    @pos6 = '6'
    @pos7 = '7'
    @pos8 = '8'
    @pos9 = '9'
  end

  def board
    # binding.pry
    puts "#{@pos1} | #{@pos2} | #{@pos3}"
    puts '- + - + -'
    puts "#{@pos4} | #{@pos5} | #{@pos6}"
    puts '- + - + -'
    puts "#{@pos7} | #{@pos8} | #{@pos9}"
  end
end

# puts 'Enter player 1 name'
# player1 = Player.new(gets.chomp)
# puts 'Enter player 2 name'
# player2 = Player.new(gets.chomp)

# puts player1.name, player2.name

board = Board.new
puts board.board
