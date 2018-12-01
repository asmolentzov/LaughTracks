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
    before(:each) do
      @bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
      @joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
      @jane = Comedian.create(name: "Jane", age: 40, city: "Stockholm")
    end
    describe '.average_age' do
      it 'should return the average age of all comedians' do
        average_age = 40
        
        expect(Comedian.average_age).to eq(average_age)
      end
    end
    describe '.unique_cities' do
      it 'should return a list of all the unique cities the comedians are from' do        
        expect(Comedian.unique_cities).to eq(['Denver', 'Stockholm'])      
      end
    end
    describe '.filter_by_age' do
      it 'should return a filtered list of comedians based on age' do
        mary = Comedian.create(name: "Mary", age: 40, city: "New York")
        
        expect(Comedian.filter_by_age(40)).to eq([@jane, mary])
      end
    end
    describe '.sort_by' do
      it 'should return comedians in the specified sorted order' do
        name_sort_expected_result = [@bob, @jane, @joe]
        
        expect(Comedian.sort_by('name')).to eq(name_sort_expected_result)
      end
    end
  end
  
  describe 'Instance Methods' do
    describe '#total_specials' do
      it 'should return the total number of specials for the comedian' do
        bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
        joe = Comedian.create(name: "Joe", age: 50, city: "Stockholm")
        bob.specials.create(name: "This is my TV Special!", 
                            length: 100,
                            image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Two_Adult_Guinea_Pigs_(cropped).jpg")
        joe.specials.create(name: "This is Joe's Special",
                            length: 60,
                            image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
        joe.specials.create(name: "This is Joe's SECOND Special",
                            length: 90,
                            image_location: "https://en.wikipedia.org/wiki/Guinea_pig#/media/File:Cat_and_guinea_pigs.jpg")
                            
        expect(bob.total_specials).to eq(1)
        expect(joe.total_specials).to eq(2)
      end
    end
  end
end
