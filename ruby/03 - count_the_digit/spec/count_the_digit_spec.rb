RSpec.describe "Count The Digit" do

  def nb_dig(n, d)
    result = Array(0..n).map{ |num| num ** 2}.select do |x|
      x.to_s.include?(d.to_s)
    end
    result.map{ |x| x.to_s }.join.gsub(d.to_s).count
  end

  it "returns 4 for n = 10 and d = 1" do
    expect(nb_dig(10, 1)).to eq(4)
  end

  it "returns 11 for n = 25 and d = 1" do
    expect(nb_dig(25, 1)).to eq(11)
  end

  it "returns 4700 for n = 5750 and d = 0" do
    expect(nb_dig(5750, 0)).to eq(4700)
  end

  it "returns 9481 for n = 11011 and d = 2" do
    expect(nb_dig(11011, 2)).to eq(9481)
  end

  it "returns 7733 for n = 12224 and d = 8" do
    expect(nb_dig(12224, 8)).to eq(7733)
  end

  it "returns 11905 for n = 11549 and d = 1" do
    expect(nb_dig(11549, 1)).to eq(11905)
  end

  it "returns 7860 for n = 10576 and d = 9" do
    expect(nb_dig(10576, 9)).to eq(7860)
  end

  it "returns 7132 for n = 7856 and d = 4" do
    expect(nb_dig(7856, 4)).to eq(7132)
  end

end

# Expected: 7860, instead got: 7858
# Expected: 7132, instead got: 7131