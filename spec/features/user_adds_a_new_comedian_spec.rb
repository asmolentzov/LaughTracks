# User Story 8
# 
# As a visitor
# When I visit `/comedians/new`
# Then I see a form to input a new comedian into the database
# Including fields for their name, age and city.
# When the form is successfully submitted and saved,
# Then I am redirected to `/comedians`
# And I see the new comedian's data on the page.

RSpec.describe 'As a visitor to the app' do
  it 'should show a form to add a new comedian' do
    visit '/comedians/new'
    
    expect(page).to have_content("Add a New Comedian")
    expect(page).to have_css("form[action='/comedians']")
    expect(page).to have_css("form[method='post']")
  end
end