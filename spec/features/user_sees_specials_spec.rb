# User Story 2
# 
# As a visitor
# When I visit `/comedians`
# Then I also see a list of each comedian's TV specials' names
# 
# - You may find this information on IMDB.com and other related sites.
# - Your project does not need to include *every* special the comedian has ever made.

RSpec.describe 'A visitor to our app' do
  it 'should show a list of each comedians specials names' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    
    bob_special = bob.specials.create(name: "This is my TV Special!")
    joe_special = joe.specials.create(name: "This is Joe's Special")
    
    visit '/comedians'
    
    within "#Bob" do
      expect(page).to have_content(bob_special.name)
    end
    within "#Joe" do
      expect(page).to have_content(joe_special.name)
    end
  end
end