def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Will"
  fill_in :player_2_name, with: "Albion"
  click_button('Submit')
end
