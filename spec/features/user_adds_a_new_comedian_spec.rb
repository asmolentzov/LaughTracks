RSpec.describe 'As a visitor to the app' do
  it 'should show a form to add a new comedian' do
    visit '/comedians/new'
    
    expect(page).to have_content("Add a New Comedian")
    expect(page).to have_css("form[action='/comedians']")
    expect(page).to have_css("form[method='post']")
  end
  
  it 'should show the new comedian on the main page' do
    joe = Comedian.create(name: "Joe", age: 40, city: "Stockholm")
    
    visit '/comedians/new'
    
    name = 'Bob'
    age = 50
    city = 'Denver'
    fill_in('comedian[name]', with: name)
    fill_in('comedian[age]', with: age)
    fill_in('comedian[city]', with: city)
    click_button('Submit')
    
    expect(current_path).to eq('/comedians')
    
    within("#comedian-#{joe.id + 1}") do
      expect(page).to have_content(name)
      expect(page).to have_content("Age: #{age}")
      expect(page).to have_content("City: #{city}")
    end
    
  end
end