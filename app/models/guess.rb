class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :card
  belongs_to  :round

  def used_cards
    self.pluck(:card_id)
  end
end
