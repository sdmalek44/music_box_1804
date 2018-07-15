describe 'features' do
  before :each do
    @user = User.create(username: "funbucket13", password: "test")
    visit login_path
    fill_in "username", with: @user.username
    fill_in "password", with: @user.password
    click_on "Log In"
  end
  it 'can logout currently logged in user' do
    expect(current_path).to eq(user_path(@user))

    click_on "Log Out"

    expect(page).to have_content("Log In")
  end
end
