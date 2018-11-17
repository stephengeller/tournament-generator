RSpec.describe CSVHandler do
  before(:each) do
    @filename = 'test_file'
    @csv_handler = CSVHandler.new(@filename)
  end

  it 'writes a string to a CSV file' do
    @csv_handler.write('foo')
    file = File.read(@filename)
    expect(file).to eq("foo\n")
  end

  it 'reads the contents of a CSV file' do
    @csv_handler.write('foo')
    contents = @csv_handler.read
    expect(contents).to eq("foo\n")
  end
end
