# frozen_string_literal: true

# Creates a new player
class Player
  attr_accessor :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
    @choices = []
  end

  def save_positions(positions)
    @choices.push(positions)
  end

  def check_positions
    @choices
  end
end

# Contains all the game logic
class Game
  def initialize
    @board_positions = Array.new(9) { |i| i + 1 }
    @round_number = 1
    @winner = false
    create_players
    print_board(0, 1)
    play
  end

  def create_players
    puts "What's your name player 1?"
    player1_name = gets.chomp
    player1_marker = 'X'
    puts "What's your name player 2?"
    player2_name = gets.chomp
    player2_marker = 'O'
    @players = [Player.new(player1_name, player1_marker), Player.new(player2_name, player2_marker)]
  end

  def print_board(position, marker)
    @board_positions[position] = marker
    puts "#{@board_positions[0]} | #{@board_positions[1]} | #{@board_positions[2]}"
    puts '- + - + -'
    puts "#{@board_positions[3]} | #{@board_positions[4]} | #{@board_positions[5]}"
    puts '- + - + -'
    puts "#{@board_positions[6]} | #{@board_positions[7]} | #{@board_positions[8]}"
  end

  def play
    until @round_number == 10 || @winner
      puts "It's your turn #{@players[change_player(@round_number)].name}, choose a position!"
      @position = gets.to_i
      if @position.between?(1, 9) && @board_positions.any?(@position)
        round
      else
        puts 'Invalid selection!'
        play
      end
    end
  end

  def change_player(round_number)
    if round_number.odd?
      0
    else
      1
    end
  end

  def round
    puts "#{@players[change_player(@round_number)].name} chose position #{@position}"
    print_board(@position - 1, @players[change_player(@round_number)].marker)
    @players[change_player(@round_number)].save_positions(@position)
    check_winner
    @round_number += 1
  end

  def check_winner
    winning_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    if winning_combinations.any? do |combination|
      (combination - @players[change_player(@round_number)].check_positions).empty?
    end
      puts "#{@players[change_player(@round_number)].name} wins the game!"
      play_again
    elsif @round_number == 9 && @winner == false
      puts "It's a Draw"
      play_again
    end
  end

  def play_again
    puts 'Insert Y if you want to play again, Insert N to quit!'
    case gets.chomp
    when 'Y'
      Game.new
    when 'N'
      exit
    else
      puts 'Invalid Selection!'
      play_again
    end
  end
end

Game.new
