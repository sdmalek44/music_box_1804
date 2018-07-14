require 'rails_helper'

describe 'nav_system' do

  it 'test link to new artist' do
    visit artists_path

    click_link 'Add New Artist'

    expect(current_path).to eq(new_artist_path)
  end
end
