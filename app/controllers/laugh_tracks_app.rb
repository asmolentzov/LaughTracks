class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.filter_by_age(params[:age])
      @specials = Special.filter_by_age(params[:age])
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
      @average_age = @comedians.average_age
      @average_length = @specials.average_length
      @cities = @comedians.unique_cities
      @total_specials = @specials.total_specials
    erb :"comedians/index"
  end
  
  get '/comedians/new' do
    erb :"comedians/new" 
  end
  
end
