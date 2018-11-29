# User Story 3
# 
# As a visitor
# When I visit `/comedians`
# Where I see a list of each comedian's TV specials' names,
# I also see each special's run-time length in minutes, and a thumbnail image.
# 
# - Image locations (URLs) can be stored in the database as a string.
# - Use the image URLs from IMDB or other online source for the special
# - Use CSS styling to scale the image smaller if needed to fit on the page

RSpec.describe 'A visitor to our app' do
  it 'should show a list of each comedians specials names' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    
    bob_special = bob.specials.create(name: "This is my TV Special!", 
                                      length: 100,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Two_Adult_Guinea_Pigs_(cropped).jpg")
    joe_special = joe.specials.create(name: "This is Joe's Special",
                                      length: 60,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
    
    visit '/comedians'
    
    within "#Bob" do
      expect(page).to have_content(bob_special.name)
      expect(page).to have_content("Runtime: #{bob_special.length}")
      expect(page).to have_css("img[src='#{bob_special.image_location}']")
    end
    within "#Joe" do
      expect(page).to have_content(joe_special.name)
    end
  end
end