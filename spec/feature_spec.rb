RSpec.describe 'feature' do
  xit 'randomises players into groups of 4' do
    names = %w[A B C D E F G H I J]
    players = generate_players(names)
    handler = Handler.new('output.csv')
    puts players
    handler.create_tournament(players)
    contents = File.read('output.csv')
    expect(contents).to eq(players)
  end

  def generate_players(names)
    full_players = []
    names.each do |name|
      full_players.push(
        name: name,
        email: "#{name}@mail.com"
      )
    end

    full_players
  end
end
