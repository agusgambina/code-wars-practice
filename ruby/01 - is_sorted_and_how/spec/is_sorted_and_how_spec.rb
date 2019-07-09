RSpec.describe "is_sorted_and_how" do

  def is_sorted_and_how(arr)
    if arr.sort == arr
      result = "yes, ascending"
    elsif arr.sort{ |a, b| b <=> a } == arr
      result = "yes, descending"
    else
      result = "no"
    end
    return result
  end

  it "returns if the array is sorted in an ascending order" do
    expect(is_sorted_and_how([1, 2])).to eq("yes, ascending")
  end

  it "returns if the array is sorted in a descending order" do
    expect(is_sorted_and_how([15, 7, 3, -8])).to eq("yes, descending")
  end

  it "returns no if the array is empty" do
    expect(is_sorted_and_how([4, 2, 30])).to eq("no")
  end

end