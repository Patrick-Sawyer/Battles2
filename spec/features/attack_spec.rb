feature 'Switches turns' do 
  scenario "Starts with player1's turn, then alternates players" do 
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50HP'
    click_button 'Attack'
    expect(page).to have_content 'Dave: 50HP'
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 40HP'
  end
end