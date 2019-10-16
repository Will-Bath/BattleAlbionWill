feature 'Infrastructure test' do
  scenario 'Tests that the infrastructure is working' do
    visit('/infra')
    expect(page).to have_content 'Infrastructure is working!'
  end
end
