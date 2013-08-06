get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word]
  @sorted = @word.downcase.split('').sort.join
  @found = Word.where(sorted_letters: @sorted)
  erb :index
end

post '/' do
  redirect "/#{params[:user_input]}"
end



