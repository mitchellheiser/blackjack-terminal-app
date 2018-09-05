# BLACKJACK TERMINAL APP

## PLANNING PHASE
**Timeline:** 2 days

**Language:** Ruby

### User Flow
* Welcome the user
* Output the user's current balance
* If user balance is **less than $25**, we ask user to add funds or quit the application
* If/when user balance is **equal or greater than $25**, we deal them their first two cards
* Ask them if they want to 'hit' or 'stay'
* If they want to hit, deal another card
* If they want to stay, changes to dealer's turn!
* If their card total exceeds 21 or is less than dealer hand, game ends and we deduct funds from user's account balance.
* If their card total is equal to 21 or card total is greater than dealer, than user WINS!!!
* Ask the user if they want to play again, or quit the application


![diagram](https://i.imgur.com/1BXzjfy.png)

## PROJECT MANAGEMENT
##### We communicated directly in person, through Slack and tracked progress using Trello

![trello](https://i.imgur.com/zrNpkCX.png)


## INSTRUCTIONS
### INSTALL
Install Required Gem Files
> Must have ruby version 2.5.1 or greater installed

```bash
gem install rubycards
```
### RUN
Run the application from terminal
```bash
ruby blackjack.rb
```

## RULES
1. Application is one player only, your player against the dealer
2. Aces will be counted as either 1 or 11 **(randomly)**
3. Face cards will be counted as 10 ie. King, Queen, Jack
4. The value of the hand is the sum of the point values of the individual cards
5. After the player has placed initial bet, the dealer will shuffle the deck and give 2 cards to the player and 2 cards to himself.
6. Player has 2 options:
* "Hit" - Player draws another card (and more if he wishes). If this card causes the player's total points to exceed 21 then he loses.
* "Stay" - Player is happy with his cards, and move to dealer's turn.
7. If the dealer goes over 21 points, then player will win
8. If the dealer doesn't bust, then the higher point total between the player and dealer

## IMPROVEMENTS
* With more time we would like to allow more players
* We would like to add more options for the player ie. double bet
* Store the player's balance, allow user to login and play
* Refactor code and run more testing

## CHALLENGES
* We had some issues implementing RubyCards gem into our application, in particular giving each card a value, and then summing these cards together to give a total value.

## POSITIVES
* We were able to implement gems into our application
* We met all project requirements within timeline

## RESOURCES
* Project Management Tools (Slack, Trello)
* [RubyCards](https://www.rubydoc.info/github/jdan/rubycards/master/frames)


> Created by Mitchell & Glenn 2018