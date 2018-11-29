class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.filter_by_age(params[:age])
    else
      @comedians = Comedian.all
    end
    @average_age = Comedian.average_age
    @average_length = Special.average_length
    @cities = Comedian.unique_cities
    @total_specials = Special.all.count
    erb :"comedians/index"
  end
  
end
