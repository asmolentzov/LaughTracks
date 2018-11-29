# User Story 4
# 
# As a visitor
# When I visit `/comedians`
# Then I see an area at the top of the page called 'Statistics'
# In that 'Statistics' area, I see the following information:
# - the average age of all comedians on the page
# - the average run length of every TV special on the page
# - a unique list of cities for each comedian on the page
# 
# Averaging and uniqueness should be done in ActiveRecord NOT
# using Ruby

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
  
  it 'should show statistics' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    bob_special = bob.specials.create(name: "This is my TV Special!", 
                                      length: 100,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Two_Adult_Guinea_Pigs_(cropped).jpg")
    joe_special = joe.specials.create(name: "This is Joe's Special",
                                      length: 60,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
    average_age = 40
    average_special_length = 80
    cities = 'Denver Stockholm'
    
    visit '/comedians'
    
    within "#statistics" do
      expect(page).to have_content("Statistics")
      expect(page).to have_content("Average Age: #{average_age}")
      expect(page).to have_content("Average TV Special Runtime: #{average_special_length}")
      expect(page).to have_content("Cities: #{cities}")
    end
  end
end