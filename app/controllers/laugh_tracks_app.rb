class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.filter_by_age(params[:age])
      @average_age = Comedian.filtered_average_age(params[:age])
      @average_length = Special.filtered_average_length(params[:age])
      @cities = Comedian.filtered_unique_cities(params[:age])
      @total_specials = Special.filtered_total_specials(params[:age])
    else
      @comedians = Comedian.all
      @average_age = Comedian.average_age
      @average_length = Special.average_length
      @cities = Comedian.unique_cities
      @total_specials = Special.total_specials
    end
    erb :"comedians/index"
  end
  
end
