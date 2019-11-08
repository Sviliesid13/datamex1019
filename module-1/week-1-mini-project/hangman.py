name = input('Type your name: ')
print('Hi!, ' + name + ' Welcome to  hangman!')

word = 'hangman'
guess = ''
attempts = 10

while attempts > 0:
    mistakes = 0
    for i in word:
        if i in guess:
            print(i)
        else:
            mistakes += 1
            print('Wrong! Try Again.')
    if mistakes == 0:
        print('You win!')
        break
    guess = input('Guess a letter: ')
    guess += guess
    if guess not in word:
        attempts -= 1
        print('You have ' + str(attempts) + ' more attempts.')
    if attempts == 0:
        print('You loose.')
