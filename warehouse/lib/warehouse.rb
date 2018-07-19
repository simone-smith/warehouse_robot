require 'pry'

class Warehouse

  def initialize
    @board = [
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["X","-","-","-","-","-","-","-","-","-"]
    ]
    @x = 0
    @y = 9
  end

  def display
    @board
  end

  def move_robot(direction)
    if direction == "N"
      @board[@y][@x] = "-"
      @y -= 1
      @board[@y][@x] = "X"
    elsif direction == "E"
      @board[@y][@x] = "-"
      @x += 1
      @board[@y][@x] = "X"
    elsif direction == "S"
      raise WarehouseRobot::OutOfBoundsError if @y + 1 >= @board.length
      @board[@y][@x] = "-"
      @y += 1
      @board[@y][@x] = "X"
    elsif direction == "W"
      @board[@y][@x] = "-"
      @x -= 1
      @board[@y][@x] = "X"
    end
  end
end

module WarehouseRobot
  class OutOfBoundsError < StandardError; end
end
