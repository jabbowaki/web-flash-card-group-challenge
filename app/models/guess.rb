class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :card
  belongs_to  :round

  def self.used_cards
    # raise Guess.where(round_id: 4).pluck(1).inspect
    # Guess.where(round_id: session[:round_number]).pluck(:card_id)
    #session doesn't work.  Patch below:
    Guess.where(round: Round.last).pluck(:card_id)
  end



end
