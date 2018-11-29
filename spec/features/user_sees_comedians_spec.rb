# User Story 1
# As a visitor
# When I visit `/comedians`
# Then I see a list of comedians with the following
# information for each comedian:
#   * Name
#   * Age
#   * City
# 
# - You may use any internet site to fetch this information to put into your database
# - The city attribute can hold birthplace or current known hometown.
# - For testing, you should ensure that the name, age and city only appear on a
#   specific area of the page for that single comedian.
# - Minimum of 12 comedians on the page.

RSpec.describe 'A visitor to our app' do
  it 'should show list of comedians' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    
    visit '/comedians'
    
    within "#Bob" do
      expect(page).to have_content(bob.name)
      expect(page).to have_content("Age: #{bob.age}")
      expect(page).to have_content("City: #{bob.city}")
    end
    within "#Joe" do
      expect(page).to have_content(joe.name)
      expect(page).to have_content("Age: #{joe.age}")
      expect(page).to have_content("City: #{joe.city}")
    end
  end
end