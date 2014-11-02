get '/' do #brings you to home login
  erb :'index'
end

post '/decks' do #logs in returning user and redirects to decks page
  # raise "#{params}"
  if params[:user][:name] == "" || params[:user][:password] == ""
    redirect :'/'
  else
    @user = User.find_by(name: params[:user][:name]) 
    if @user.authenticate(@user.name, params[:user][:password])
      session[:user_id] = @user.id
      redirect :'/decks'
    end
    redirect :'/'
  end
end

get '/new' do #brings you to new user signup
  # @user = User.create

  erb :'/new'
end

post '/new' do #redirects new user to decks page
  # @user = User.create!(params[:users])
  # raise "#{params[:user][:name].inspect}"
  if params[:user][:name] == "" || params[:user][:password] == ""
    # session[:user_id] = user.id
    redirect :'/'
  else
    password_hash = BCrypt::Password.create(params[:user][:password])
    current_user = User.create(name: params[:user][:name], password: password_hash)
    session[:user_id] = current_user.id
    redirect '/decks'
  end

  # redirect :'/decks'
end

post '/logout' do
  session[:user_id] = nil
  redirect :'/'
end


