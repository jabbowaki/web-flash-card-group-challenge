get '/decks/:deck_id/:card_id' do
  @deck_id = params[:deck_id]
  @card = Card.find(params[:card_id])
  erb :cards
end

post '/decks/:deck_id/:card_id' do
 p params[:answer]
 p params[:card_id]
 # p @card = Card.find(params[:card_id])
  #@deck_id = params[:deck_id]
  #@card = Card.find(params[:card_id])
  # @guess = Guess.create!(params[:answer])
  # p @guess
end
