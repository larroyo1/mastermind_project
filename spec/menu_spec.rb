require 'rspec'
require './lib/menu'
require './lib/game'

RSpec.describe Menu do
  it 'has a menu' do
    menu = Menu.new()

    expect(menu).to be_an_instance_of(Menu)

  end

  it 'asks user for input' do
    menu = Menu.new()
    input_1 = double("i")
    input_2 = double("p")
    input_3 = double("q")
    allow(input_1).to receive(:gets).and_return("i")
    allow(input_2).to receive(:gets).and_return("p")
    allow(input_3).to receive(:gets).and_return("q")

  end

  it 'can begin the game also' do
    menu = Menu.new()
    game = Game.new()

    allow(input_2).to receive(:gets).and_return("p")
    game.begin
  end

  it 'has instructions to play game' do
    menu = Menu.new()
    game = Game.new()

    expect(menu.instructions).to eq(" ")
  end
end
