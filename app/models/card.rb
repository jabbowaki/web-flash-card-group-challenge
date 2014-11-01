class Card < ActiveRecord::Base
  belongs_to  :deck
  has_many  :guesses
  # Remember to create a migration!

  def check_answer(answer)
    # if answer == self.select(:answer)
    if answer == self.answer
      return true
    else
      return false
    end
  end


end
