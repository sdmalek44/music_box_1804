require 'rails_helper'

describe 'user index' do
  it 'user can see all songs' do
    artist = Artist.create!(name: "Adele")
    song1 = artist.songs.create(title: "Don't Stop Believin", length: 303, play_count: 123456)
    song2 = artist.songs.create(title: "Threshold", length: 253, play_count: 9876234)

    visit '/songs'

    expect(page).to have_content("All Songs")
    expect(page).to have_content(song1.title)
    expect(page).to have_content("Plays: #{song1.play_count}")
    expect(page).to have_content(song2.title)
    expect(page).to have_content("Plays: #{song2.play_count}")
  end
end
