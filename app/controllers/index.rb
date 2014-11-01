get '/' do
  erb :'index'
end

post '/decks' do
  @user = User.find_by(name: params[:name], password: params[:password])
  redirect :'/decks'
end

get '/decks' do
  erb :'/decks'
end

get '/new' do
  @user = User.new
  erb :'/new'
end

post '/new' do
  @user = User.create!(params[:users])
  redirect :'/decks'
end


