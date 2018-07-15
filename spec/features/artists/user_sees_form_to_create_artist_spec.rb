require 'rails_helper'

describe 'features' do
  describe 'user can create a new artist' do
    it 'by filling in a form' do
      artist_name = "Journey"

      visit "/artists/new"

      fill_in :artist_name, with: artist_name

      click_on "Create Artist"

      expect(page).to have_content(artist_name)
    end
  end
end
