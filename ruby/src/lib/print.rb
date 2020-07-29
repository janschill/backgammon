class Print
  def self.padded(number)
    if number.to_s.length == 1
      '0' + number.to_s
    else
      number.to_s
    end
  end

  def self.divider
    '|---' * 6 + '||' + '---|' * 6
  end

  def self.numbers(section)
    str = '|'
    index = 0
    case section
    when 'upper'
      (13..24).each do |n|
        str += '|' if index == 6
        str = "#{str} #{n}|"
        index += 1
      end
    when 'lower'
      12.downto(1).each do |n|
        str += '|' if index == 6
        str = "#{str} #{padded(n)}|"
        index += 1
      end
    end
    str
  end

  def self.upper_board(board)
    rows = '|'
    index = 0
    (0..4).each do |row|
      (13..24).each do |n|
        rows += '|' if index == 6
        rows += if row == 4 && board[n].size > 5
                  " #{board[n].size - 5 + 1} |"
                else
                  " #{board[n][row]} |"
        end
        index += 1
      end
      index = 0
      rows += "\n|" unless row == 4
    end
    rows
  end

  def self.lower_board(board)
    rows = '|'
    index = 0
    4.downto(0).each do |row|
      12.downto(1).each do |n|
        rows += '|' if index == 6
        rows += if row == 4 && board[n].size > 5
                  " #{board[n].size - 5 + 1} |"
                else
                  " #{board[n][row]} |"
                end
        index += 1
      end
      index = 0
      rows += "\n|" unless row.zero?
    end
    rows
  end
end
