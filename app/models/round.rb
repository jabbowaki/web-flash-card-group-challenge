class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to  :deck
  belongs_to  :user
  has_many    :guesses
  has_many    :cards, through: :decks
end
