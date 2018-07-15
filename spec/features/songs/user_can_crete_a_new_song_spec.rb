require 'rails_helper'

describe 'user can create a new song' do
  it 'by filling out a form' do
    song_title = "play that funky music"
    song_length = 267
    song_play_count = 340000
    artist = Artist.create(name: 'wild cherry')

    visit new_artist_song_path(artist)

    fill_in 'song[title]', with: song_title
    fill_in 'song[length]', with: song_length
    fill_in 'song[play_count]', with: song_play_count

    click_on 'Create Song'

    expect(current_path).to eq(songs_path)
    expect(page).to have_content(song_title)
  end
end
