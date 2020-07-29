require_relative '../lib/print'

class Board
  attr_accessor :board

  def initialize
    init_board
  end

  def clear_board
    @board = {}
    (1...24).each do |point|
      @board[point] = []
    end
  end

  def init_board
    clear_board
    @board = {
      1 => %W[\u00D8 \u00D8 - - -],
      2 => %w[- - - - -],
      3 => %w[- - - - -],
      4 => %w[- - - - -],
      5 => %w[- - - - -],
      6 => %w[O O O O O],
      7 => %w[- - - - -],
      8 => %w[- - - - -],
      9 => %w[O O O - -],
      10 => %w[- - - - -],
      11 => %w[- - - - -],
      12 => %W[\u00D8 \u00D8 \u00D8 \u00D8 \u00D8],
      13 => %w[O O O O O],
      14 => %w[- - - - -],
      15 => %w[- - - - -],
      16 => %W[\u00D8 \u00D8 \u00D8 - -],
      17 => %w[- - - - -],
      18 => %w[- - - - -],
      19 => %W[\u00D8 \u00D8 \u00D8 \u00D8 \u00D8],
      20 => %w[- - - - -],
      21 => %w[- - - - -],
      22 => %w[- - - - -],
      23 => %w[- - - - -],
      24 => %w[O O - - -]
    }
  end

  def print_board
    board = ''
    board += Print.numbers('upper') + "\n"
    board += Print.divider + "\n"
    board += Print.upper_board(@board) + "\n"
    board += Print.divider + "\n"
    board += Print.lower_board(@board) + "\n"
    board += Print.divider + "\n"
    board += Print.numbers('lower') + "\n"
    board
  end
end

__END__
| 13| 14| 15| 16| 17| 18|| 19| 20| 21| 22| 23| 24|
|---|---|---|---|---|---||---|---|---|---|---|---|
| O |   |   | Ø |   |   || Ø |   |   |   |   | O |
| O |   |   | Ø |   |   || Ø |   |   |   |   | O |
| O |   |   | Ø |   |   || Ø |   |   |   |   |   |
| O |   |   |   |   |   || Ø |   |   |   |   |   |
| O |   |   |   |   |   || Ø |   |   |   |   |   |
|   |   |   |   |   |   ||   |   |   |   |   |   |
| Ø |   |   |   |   |   || O |   |   |   |   |   |
| Ø |   |   |   |   |   || O |   |   |   |   |   |
| Ø |   |   | O |   |   || O |   |   |   |   |   |
| Ø |   |   | O |   |   || O |   |   |   |   | Ø |
| Ø |   |   | O |   |   || O |   |   |   |   | Ø |
|---|---|---|---|---|---||---|---|---|---|---|---|
| 12| 11| 10| 09| 08| 07|| 06| 05| 04| 03| 02| 01|

