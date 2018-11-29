RSpec.describe 'A visitor to our app' do
  before(:each) do
    @bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    @joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
    
  end
  it 'should show list of comedians' do
    visit '/comedians'
    
    within "#comedian-#{@bob.id}" do
      expect(page).to have_content(@bob.name)
      expect(page).to have_content("Age: #{@bob.age}")
      expect(page).to have_content("City: #{@bob.city}")
    end
    within "#comedian-#{@joe.id}" do
      expect(page).to have_content(@joe.name)
      expect(page).to have_content("Age: #{@joe.age}")
      expect(page).to have_content("City: #{@joe.city}")
    end
  end
  
  it 'should show statistics' do
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")
    bob_special = @bob.specials.create(name: "This is my TV Special!", 
                                      length: 100,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Two_Adult_Guinea_Pigs_(cropped).jpg")
    joe_special = @joe.specials.create(name: "This is Joe's Special",
                                      length: 60,
                                      image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
    visit '/comedians'
    
    within "#statistics" do
      expect(page).to have_content("Statistics")
      expect(page).to have_content("Average Age: #{Comedian.average_age}")
      expect(page).to have_content("Average TV Special Runtime: #{Special.average_length.to_i}")
      expect(page).to have_content("Cities: #{Comedian.unique_cities.join(' ')}")
      expect(page).to have_content("Total TV Specials: 2")
    end
  end
end