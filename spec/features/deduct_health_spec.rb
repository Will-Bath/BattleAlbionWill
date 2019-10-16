feature 'Deducts health' do
  scenario 'Player 1 attacks Player 2, deducts health' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Albion: 60hp'
    expect(page).to have_content 'Albion: 50hp'
  end
end
