class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    @comedians = Comedian.all
    @average_age = Comedian.average_age
    @average_length = Special.average_length
    @cities = Comedian.unique_cities
    erb :"comedians/index"
  end
end
