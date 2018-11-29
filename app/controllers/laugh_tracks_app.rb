class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    @comedians = Comedian.all
    @average_age = Comedian.average_age
    erb :"comedians/index"
  end
end
