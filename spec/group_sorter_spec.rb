RSpec.describe GroupSorter do
  it 'takes the max size as an argument' do
    group = GroupSorter.new(4)
    expect(group.max_size).to eq(4)
  end
end
