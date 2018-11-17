RSpec.describe Tournament::Generator do
  before(:each) do
    @generator = Tournament::Generator.new('spec/test_file.csv')
  end
end
