class CSVHandler
  def initialize(filename)
    @filename = filename
  end

  def write(contents)
    f = File.open(@filename,'w+')
    f.write(contents)
    f.close
  end

  def read(filename = @filename)
    File.read(filename)
  end
end