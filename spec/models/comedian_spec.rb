RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        
        expect(comic).to_not be_valid
      end
    end
  end
  
  describe 'Class Methods' do
    describe '.average_age' do
      it 'should return the average age of all comedians' do
        bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
        joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
        average_age = 40
        
        expect(Comedian.average_age).to eq(average_age)
      end
    end
  end
end
