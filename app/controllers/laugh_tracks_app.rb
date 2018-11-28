class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    erb :index.html
  end
end
