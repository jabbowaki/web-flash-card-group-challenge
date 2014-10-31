
deck1 = Deck.create!(name: "State capitols")

card1 = Card.create!(deck: deck1, question: "What is IL's capitol?", answer: "Springfield")
card2 = Card.create!(deck: deck1, question: "What is AK's capitol?", answer: "Juneau")
card3 = Card.create!(deck: deck1, question: "What is AL's capitol?", answer: "Montgomery")

user1 = User.create!(name: "Nate", password: "cats")

round1 = Round.create!(deck: deck1, user: user1)


guess1 = Guess.create!(round: round1, card: card1, correct: false)
guess2 = Guess.create!(round: round1, card: card2, correct: false)
guess3 = Guess.create!(round: round1, card: card3, correct: false)


