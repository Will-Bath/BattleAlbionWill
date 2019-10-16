feature 'Attack' do
  scenario 'Player 1 attacks Player 2, get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Albion: 50hp'
  end
end
