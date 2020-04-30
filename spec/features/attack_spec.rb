feature 'Attacking' do
  scenario 'attack PLayer 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave vs. Mittens: 50HP'
  end
end
