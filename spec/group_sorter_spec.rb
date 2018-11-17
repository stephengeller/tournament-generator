RSpec.describe GroupSorter do

  before do
    @group_sorter = GroupSorter.new(8)
  end
  it 'takes the max group size and number of groups as an argument' do
    group = GroupSorter.new(8)
    expect(group.players_per_game).to eq(8)
  end


  describe 'when the total number of players is not more than the players per game' do
    before do
      @players = [*1..8]
      @group_sorter = GroupSorter.new(@players.length)
    end

    it 'errors out with a helpful message' do
      expect{@group_sorter.create_groups(@players)}.to raise_error("No grouping necessary, players do not exceed game size")
    end
  end

  describe 'with 12 players and 8 players per game' do
    before do
      players = [*1..12]
      group_sorter = GroupSorter.new(8)
      @groups = group_sorter.create_groups(players)
    end

    it 'sorts into 3 groups' do
      expect(@groups.length).to eq(3)
    end

    it 'the 3 groups are A, B, C (alphabetical)' do
      alphabet = ("A".."Z").to_a
      @groups.each_with_index do |group, index|
        expect(group[:group_name]).to eq(alphabet[index])
      end
    end

    it 'each group has 4 members' do
      puts @groups
      expect(@groups[0][:members].length).to eq(4)
    end
  end
end
