class BowlingGame
  attr_reader :total_score, :frames

  def initialize
    @strikes = 0
    @spares = 0
    @frames = []
  end

  def roll(pins)
    rand(pins)
  end

  def frame
    first_roll = roll(0..10)
    if first_roll == 10
      @strikes += 1
      return 0
    else
      leftover_pins = 10 - first_roll
      second_roll = roll(leftover_pins)
      if @spares >= 1
        first_roll = (first_roll * 2)
        @spares -= 1
      end
      @spares += 1 if (second_roll == leftover_pins)
      score = first_roll + second_roll
    end
    if (@strikes >= 1)
      score = score * 2
      @strikes -= 1
    end
    # debugger
    score
  end

  def game
    10.times do
      @frames << frame
    end
    frames
  end

  def total_score
    return 300 if @strikes == 12
    frames.reduce(:+)
  end

end

my_game = BowlingGame.new
p my_game.game
p my_game.total_score