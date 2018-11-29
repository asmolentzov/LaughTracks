# User Story 5
# 
# As a visitor
# When I visit `/comedians?age=34`
# Then I see the list of comedians on the page only shows
# comedians who match the age criteria.
# 
# - All other information on the page is still expected to be present
# - Testing should check that excluded comedians do not show up.

RSpec.describe 'As a visitor to the app' do
  it 'filters the comedians on the page to only show those of indicated age' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")

    visit '/comedians?age=34'
    
    expect(page).to have_css("article#comedian-#{bob.id}")
    expect(page).to_not have_css("article#comedian-#{joe.id}")
    expect(page).to_not have_css("article#comedian-#{jane.id}")
    expect(page).to have_content("#{joe.name}")
    expect(page).to have_content("Age: #{joe.age}")
    expect(page).to_not have_content("#{bob.name}")
    expect(page).to_not have_content("#{jane.name}")
  end
end