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
