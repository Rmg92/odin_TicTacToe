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
  def initialize(player_class)
    puts "What's your name player 1?"
    player1_name = gets.chomp
    puts "What's your name player 2?"
    player2_name = gets.chomp
    @players = [player_class.new(player1_name), player_class.new(player2_name)]
    play
  end

  def print_board(position, marker)
    board_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    board_positions[position] = marker
    puts "#{board_positions[0]} | #{board_positions[1]} | #{board_positions[2]}"
    puts '- + - + -'
    puts "#{board_positions[3]} | #{board_positions[4]} | #{board_positions[5]}"
    puts '- + - + -'
    puts "#{board_positions[6]} | #{board_positions[7]} | #{board_positions[8]}"
  end

  def play
    puts @players[1].name
    print_board(0, 'X')
  end
end

Game.new(Player)
