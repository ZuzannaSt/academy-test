describe City do

  before(:each) { @city = build(:city) }  

  subject { @city }

  it { should respond_to(:name) }

  it { should be_valid }

  it "checks if city name is Test City" do
    expect(@city.name).to eq('Test City')
  end

  it "checks if city short name is TC" do
    expect(@city.short_name).to eq('TC')
  end

end
