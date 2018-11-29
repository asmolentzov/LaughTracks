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
    
  end
end