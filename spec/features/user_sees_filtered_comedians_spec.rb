# User Story 7
# 
# As a visitor
# When I visit `/comedians?age=34`
# Then I see a list of all comedians with an age of 34
# Just like a previous User Story, BUT all other statistics 
# information in the 'Statistics' area of the page should be limited 
# to reflect only the information about the comedians listed on 
# the page.
# 
# - Testing should ensure that calculated statistics are
#   correct for a limited subset of data

RSpec.describe 'As a visitor to the app' do
  it 'filters the comedians on the page to only show those of indicated age' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")

    visit '/comedians?age=34'
    
    expect(page).to have_selector("#comedian-#{joe.id}")
    expect(page).to_not have_selector("#comedian-#{bob.id}")
    expect(page).to_not have_selector("#comedian-#{jane.id}")
    expect(page).to have_content("#{joe.name}")
    expect(page).to have_content("Age: #{joe.age}")
    expect(page).to_not have_content("#{bob.name}")
    expect(page).to_not have_content("#{jane.name}")
  end
  
  it 'filters the statistics to show for only those of indicated age' do
    bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
    joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
    jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")
    mary = Comedian.create(name: "Mary", age: 34, city: "New York City")
    bob.specials.create(name: "This is my TV Special!", 
                                      length: 100,
                                      image_location: "")
    joe.specials.create(name: "This is Joe's Special",
                                      length: 60,
                                      image_location: "")
    mary.specials.create(name: "This is Marys Special",
                                      length: 80,
                                      image_location: "")
    joe.specials.create(name: "This is Joe's SECOND Special",
                                      length: 100,
                                      image_location: "")
                                      
    visit '/comedians?age=34'
    
    filtered_average_age = 34
    filtered_average_length = 80
    filtered_cities = 'New York City Stockholm'
    filtered_total_specials = 3
    
    within "#statistics" do
      expect(page).to have_content("Average Age: #{filtered_average_age}")
      expect(page).to have_content("Average TV Special Runtime: #{filtered_average_length}")
      expect(page).to have_content("Cities: #{filtered_cities}")
      expect(page).to have_content("Total TV Specials: #{filtered_total_specials}")
    end
    
  end
end