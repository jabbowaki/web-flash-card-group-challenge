get '/decks' do #displays decks page
  erb :'/decks'
end

get '/decks/:deck_id' do #routes user to the first card of the deck
  @deck_id = params[:deck_id]
  redirect :'/decks/:deck_id/1'
end
