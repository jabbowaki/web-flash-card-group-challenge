class Deck < ActiveRecord::Base
  # Remember to create a migration!
  has_many  :cards
  has_many  :rounds

  def what_cards_do_you_have
    self.cards.pluck(:id)
  end

  def next_card_id
    available_cards = self.what_cards_do_you_have - Guess.used_cards
    return available_cards.sample
  end
end
