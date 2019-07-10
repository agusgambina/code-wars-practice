RSpec.describe "Persistent Bugger" do

  def persistence(n)
    count = 0
    while n.to_s.chars.size > 1 do
      count += 1
      n = n.to_s.chars.map(&:to_i).reduce(:*)
    end
    count
  end

  it 'returns the persistence of 39' do
    expect(persistence(39)).to eq(3)
  end

  it 'returns the persistence of 999' do
    expect(persistence(999)).to eq(4)
  end

  it 'returns the persistence of 4' do
    expect(persistence(4)).to eq(0)
  end

end
