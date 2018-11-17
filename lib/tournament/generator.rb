require 'csv_handler'


module Tournament
  class Generator
    class Error < StandardError; end
      def initialize(csv_file)
        @csv_file = csv_file
        @csv_handler = CSVHandler.new(@csv_file)
      end
      def create_tournament(players)
        @csv_handler.write(players)
      end
  end
end
