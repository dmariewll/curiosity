class Rover

  attr_reader :x
  attr_reader :y

  def initialize
    @x = 0
    @y = 0
    @direction = :n

  end

  def direction
    case @direction
      when :n
        :n
      when :s
        :s
      when :e
        :e
      when :w
        :w
    end
  end

  def move_forward
    case @direction
    when :e
      @x += 1
    when :w
      @x -= 1
    when :n
      @y += 1
    when :s
      @y -= 1
    end
  end

  def turn_left
    case @direction
      when :n
        :w
      when :e
        :n
      when :s
        :e
      when :w
        :s
    end
  end

  def turn_right
    case @direction
      when :n
        :e
      when :e
        :s
      when :s
        :w
      when :w
        :n
    end

      end
    end





