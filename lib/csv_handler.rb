require 'csv'

class CSVHandler
  def initialize(filename)
    @filename = filename
  end

  def write(contents)
    puts contents
    CSV.open(@filename, 'w+') do |csv|
      csv << [contents]
    end
  end

  def read(filename = @filename)
    File.read(filename)
  end
end
