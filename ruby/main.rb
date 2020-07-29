#!/usr/bin/env ruby

require_relative 'src/model/board'

class Main
  board = Board.new
  puts board.print_board
end
