require_relative 'game.rb'

describe Game do
  let(:game) {Game.new("Test")}

  it "checks if a letter is present in test" do
    expect(game.check_guess('e')).to eq "_e__"
  end

  it "checks lower/uppercase letter" do
    expect(game.check_guess('T')).to eq "t__t"
  end

  it "check if a letter present twice works" do
    expect(game.check_guess('t')).to eq "t__t"
  end
end