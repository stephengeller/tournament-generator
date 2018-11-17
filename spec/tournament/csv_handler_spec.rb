RSpec.describe CSVHandler do
  before(:each) do
    @filename = 'test_file'
    @csv_handler = CSVHandler.new(@filename)
    puts 'bar'
  end

  it 'writes a string to a CSV file' do
    @csv_handler.write('foo')
    file = File.read(@filename)
    expect(file).to eq('foo')
  end
g
  it 'reads the contents of a CSV file' do
    @csv_handler.write('foo')
    contents = @csv_handler.read
    expect(contents).to eq('foo')
  end
end
