require './lib/bookmark'

describe Bookmark do

  subject(:bookmark) { described_class }

  it 'returns a list of URLs' do
    expect(bookmark.all).to eq ["https://www.google.com", "https://makers.tech/"]
  end

end

