get '/' do #brings you to home login
  erb :'index'
end

post '/decks' do #logs in returning user and redirects to decks page
  @user = User.find_by(name: params[:user][:name], password: params[:user][:password])
  session[:user_id] = @user.id
  redirect :'/decks'
end

get '/new' do #brings you to new user signup
  # @user = User.create
  erb :'/new'
end

post '/new' do #redirects new user to decks page
  @user = User.create!(params[:users])

  redirect :'/decks'
end


