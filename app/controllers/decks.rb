get '/decks' do #displays decks page
  erb :'/decks'
end

get '/decks/:deck_id' do #routes user to the first card of the deck
  @deck = Deck.find(params[:deck_id])
  @user = User.find(session[:user_id])
  @round = Round.create!(deck: @deck, user: @user)
  # raise Guess.all.map{inspect #testing used_cards
  # raise @deck.what_cards_do_you_have.inspect #testing what_cards, return array of cards
  redirect :"/decks/#{@deck.id}/#{@deck.what_cards_do_you_have.sample}"
end


