get '/decks/:deck_id/:card_id' do
  @deck_id = params[:deck_id]
  @card = Card.find(params[:card_id])
  erb :cards
end

post '/decks/:deck_id/:card_id' do

 @deck_id = params[:deck_id]
 @card = Card.find(params[:card_id]) # this works
 @correct = @card.check_answer(params[:answer])


 # p params[:deck_id] # this works for the deck id
 # p params[:answer] # this works. this is the user's answer.
 # p params[:card_id] # this works for card id.

  # find  out whether answer is true or false



  @guess = Guess.create!(card: @card, correct: @correct)
  # @guess.update_attribute(:correct or not)
  # p @guess
  erb :"guess"
  # redirect '/guesses' #this would show @card.quesion, @card.answer, user_anser
  #then have a link to the next card
end
