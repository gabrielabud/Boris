require 'bike'

describe Bike do

  it { is_expected.to respond_to(:working?) }

  it "working to be true" do
    expect(subject.working?).to eq true
  end

  it "working to be true" do
    expect(Bike.new(true).working?).to eq false
  end

end
