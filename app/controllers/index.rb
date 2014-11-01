get '/' do
  erb :'index'
end

get '/new' do
  @user = User.new
  erb :'/new'
end

# post '/new' do
#   @user = User.create!(params[:users])
#   redirect :'/decks'
# end

# get '/decks' do
#   erb :'decks'
# end

