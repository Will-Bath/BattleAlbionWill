feature 'View hit points' do
  scenario "See Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Albion: 60hp"
  end

  scenario "See Player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content "Will: 60hp"
  end
end
