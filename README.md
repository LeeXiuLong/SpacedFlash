Welcome to my(Jourdan Ooi's) version of Learn2Wins Spaced Repetition Flashcard app!

I have used the following technologies in the App:
React JS
Redux
React Hooks
Ruby on Rails
PostgreSQL


Setup:
In order to run the app on your local machine clone the repo and then navigate to the 'SpacedFlash' directory

Afterwards run the following commands in seperate terminals:

1. "rails db:setup"
2. "rails db:seed"
3. "rails s"
4. "npm start"

Before running the above steps feel free to add more seed information to the database!

This should run webpack and spin up the rails server and you should be able to open the application at
http://localhost:3000/#/

Design:

The project has been designed in the following way. There are boxes that contain flashcards. Each box represents the difficulty of a question. Difficulty is determined by how often you get the answer correct or incorrect.

You will receive a random flashcard when you start the test. When you answer the question one of two things will happen. If you got the answer correct then the flashcard will move up a box signifying that it is a less difficult card. If you get the answer incorrect then the flashcard will move back to the first box signifying that it is a harder question. You should never get the same card twice in a row!

The points are scored based on which box the card is in. If the card is in the hardest box(usually box 1) then you will be given points according to how many total boxes there are currently. For example if there are 4 boxes and you get a question in the hardest box correct you will get 4 points. If you get a question correct in the second hardest box and there are 4 boxes you will get 3 points etc. 

At the end of the test you may view your total points but the points will reset once you reset and take the test again!

Thank you for taking the time to view interview me for this position. I have truly enjoyed working on this project! 

If you have any questions about the project feel free to send me an email at jungterooi@gmail.com