# As a user, when I visit `/comedians?sort=name`
# Then I see all previous information, but all comedians are
# sorted alphabetically by the name of the comedians.

RSpec.describe 'As a visitor to the app' do
  it 'should be able to sort comedians by name via URL' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")
    
    visit '/comedians?sort=name'
    
    expect(page).to have_content(bob.name)
    expect(page).to have_content(jane.name)
    expect(page).to have_content(joe.name)
  end
end