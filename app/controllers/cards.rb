get '/decks/:deck_id/:card_id' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  erb :cards
end

post '/decks/:deck_id/:card_id' do
 # @deck_id = params[:deck_id]
 @deck = Deck.find(params[:deck_id])
 @card = Card.find(params[:card_id]) # this works
  # find  out whether answer is true or false
 @correct = @card.check_answer(params[:answer])

 # p params[:deck_id] # this works for the deck id
 # p params[:answer] # this works. this is the user's answer.
 # p params[:card_id] # this works for card id.

  @guess = Guess.create!(card: @card, correct: @correct)
  if @deck.next_card_id
    erb :"guess"
  else
    erb :"no_cards"
  end

  # redirect '/guesses' #this would show @card.quesion, @card.answer, user_anser
  #then have a link to the next card
end
