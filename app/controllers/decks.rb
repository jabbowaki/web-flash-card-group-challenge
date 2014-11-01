get '/decks' do #displays decks page
  erb :'/decks'
end

get '/decks/:deck_id' do #routes user to the first card of the deck
  @deck_id = params[:deck_id]
  @deck = Deck.find(@deck_id)
  # raise Guess.all.map{inspect #testing used_cards
  # raise @deck.what_cards_do_you_have.inspect #testing what_cards, return array of cards
  redirect :"/decks/#{@deck_id}/#{@deck.what_cards_do_you_have.sample}"
end
