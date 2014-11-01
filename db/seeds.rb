
deck1 = Deck.create!(name: "State capitols")

card1 = Card.create!(deck: deck1, question: "What is IL's capitol?", answer: "Springfield")
card2 = Card.create!(deck: deck1, question: "What is AK's capitol?", answer: "Juneau")
card3 = Card.create!(deck: deck1, question: "What is AL's capitol?", answer: "Montgomery")

user1 = User.create!(name: "Nate", password: "cats")

round1 = Round.create!(deck: deck1, user: user1)


guess1 = Guess.create!(round: round1, card: card1, correct: false)
guess2 = Guess.create!(round: round1, card: card2, correct: false)
guess3 = Guess.create!(round: round1, card: card3, correct: false)

deck2 = Deck.create!(name: "US Presidents")

card4 = Card.create!(deck: deck2, question: "Who was the 1st US President?", answer: "George Washington")
card5 = Card.create!(deck: deck2, question: "Who was the 2nd US President?", answer: "John Adams")
card6 = Card.create!(deck: deck2, question: "Who was the 11th US President?", answer: "James Polk")
card7 = Card.create!(deck: deck2, question: "Who was the 31st US President?", answer: "Herbert Hoover")
card8 = Card.create!(deck: deck2, question: "Who was the 43rd US President?", answer: "George W Bush")


