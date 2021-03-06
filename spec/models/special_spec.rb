RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end
  
  describe 'Class Methods' do
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
    describe '.average_length' do
      it 'should return the average length of all the specials' do
        average_length = 80
        
        expect(Special.average_length).to eq(average_length)
      end
    end
    describe '.total_specials' do
      it 'should return the total count of TV specials' do
        total = 2
        expect(Special.total_specials).to eq(total)
      end
    end
    describe '.filter_by_age' do
      it 'should return the specials for a subset of comedians' do
        bob = Comedian.create(name: "Bob", age: 30, city: "Denver")
        joe = Comedian.create(name: "Joe", age: 34, city: "Stockholm")
        mary = Comedian.create(name: "Mary", age: 34, city: "New York City")
        bob.specials.create(name: "This is my TV Special!", 
                                          length: 100,
                                          image_location: "")
        joe_special = joe.specials.create(name: "This is Joe's Special",
                                          length: 60,
                                          image_location: "")
        mary_special = mary.specials.create(name: "This is Marys Special",
                                          length: 80,
                                          image_location: "")
        joe_special_2 = joe.specials.create(name: "This is Joe's SECOND Special",
                                          length: 100,
                                          image_location: "")
        filtered_specials = [joe_special, mary_special, joe_special_2]
        
        expect(Special.filter_by_age(34)).to eq(filtered_specials)
      end
    end
  end
end
