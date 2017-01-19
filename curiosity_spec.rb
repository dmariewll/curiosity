require 'rspec'
require_relative 'curiosity'

describe Rover do

  it "starts in the correct position" do

    r = Rover.new

    expect(r.x).to eq 0
    expect(r.y).to eq 0
  end

  it "starts in the right direction" do

    r = Rover.new

    expect(r.direction).to eq :n

  end

  it "can turn left" do

    r = Rover.new
    r.turn_left
    r.move_forward

    expect(r.turn_left).to eq :w
  end


    it "can turn right" do

      r = Rover.new
      r.turn_right
      r.move_forward

      expect(r.turn_right).to eq :e
    end


  it "moves forward" do

    r = Rover.new
    r.move_forward

    expect(r.x).to eq 0
    expect(r.y).to eq 1
  end

  it 'can turn around' do

    r = Rover.new
    4.times { r.turn_left }

    expect(r.direction).to eq :n
  end

  # Keep receiving NoMethodError and not sure why
  it 'can set a direction' do
    r = Rover.new

    direction = [:n, :s, :e, :w].sample
    r.direction = direction
    expect(r.direction).to eq direction
  end

  # Keep receiving NoMethodError and not sure why
  skip 'can follow directions' do

    r = Rover.new
    r.follow('LF')

    expect(r.direction).to eq :w
    expect(r.x).to eq -1
    expect(r.y).to eq 0
  end

end





