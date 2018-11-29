RSpec.describe 'A visitor to our app' do
  before(:each) do
    @bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    @joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    @bob_special = @bob.specials.create(name: "This is my TV Special!", 
                                      length: 100,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Two_Adult_Guinea_Pigs_(cropped).jpg")
    @joe_special = @joe.specials.create(name: "This is Joe's Special",
                                      length: 60,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
  end
  
  it 'should show a list of each comedians specials names' do 
    visit '/comedians'
       
    within "#comedian-#{@bob.id}" do
      expect(page).to have_content(@bob_special.name)
    end
    within "#comedian-#{@joe.id}" do
      expect(page).to have_content(@joe_special.name)
    end
  end
  
  it 'should show the comedians specials runtime and image' do
    visit '/comedians'
    
    within "#comedian-#{@bob.id}" do
      expect(page).to have_content("Runtime: #{@bob_special.length}")
      expect(page).to have_css("img[src='#{@bob_special.image_location}']")
      expect(page).to have_css("img[alt=\"#{@bob_special.name}\"]")
    end
    within "#comedian-#{@joe.id}" do
      expect(page).to have_content("Runtime: #{@joe_special.length}")
      expect(page).to have_css("img[src='#{@joe_special.image_location}']")
      expect(page).to have_css("img[alt=\"#{@joe_special.name}\"]")
    end
  end
  
  it 'should show a message if the comedian has no specials' do
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")
    visit '/comedians'
    
    within "#comedian-#{jane.id}" do
      expect(page).to have_content("No joke: this comedian has no specials.")
    end
  end
end