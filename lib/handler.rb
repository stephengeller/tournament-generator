require 'csv_handler'

class Handler
  def initialize(csv_file)
    @csv_file = csv_file
    @csv_handler = CSVHandler.new(@csv_file)
  end

  def create_tournament(players)
    @csv_handler.write(players)
  end
end
