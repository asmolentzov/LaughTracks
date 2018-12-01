# As a user, when I visit `/comedians`,
# I see all previous information
# And each comedian's name is a link to a page that only shows
# that comedian's information and TV specials.
# 
# For example, comedian #4 in your database would have a page like
# `/comedians/4`
# 
# - Testing should check that only this one comedian's information
#   is on the page.
  
RSpec.describe 'As a visitor to the app' do
  it 'should be able to go to individual comedian pages' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
    
    visit '/comedians'
    
    expect(page).to have_content("#{bob.name}")
    expect(page).to have_content("#{joe.name}")
    
    within("#comedian-#{bob.id}") do
      click_link "#{bob.name}"
    end
    
    expect(current_path).to eq("/comedians/#{bob.id}")
  end
  
  it 'should only see indicated comedian info on page' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
    
    visit "/comedians/#{bob.id}"
    
    expect(page).to have_content(bob.name)
    expect(page).to have_content("Age: #{bob.age}")
    expect(page).to have_content("City: #{bob.city}")
    expect(page).to_not have_content(joe.name)
  end
end
  