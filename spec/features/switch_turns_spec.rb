feature 'Switching Turns' do
  scenario "Starts on Player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "Will's turn"
  end

  scenario "Turn switches to Player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content "Will's turn"
    expect(page).to have_content "Albion's turn"
  end
end
