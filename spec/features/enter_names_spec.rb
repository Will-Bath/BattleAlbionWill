feature 'Input the names' do
  scenario 'Can input Player names' do
    sign_in_and_play
    expect(page).to have_content 'Prepare to fight, Will and Albion!'
  end
end
