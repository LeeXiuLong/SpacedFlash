Welcome to my(Jourdan Ooi's) version of the Spaced Repetition Flashcard app!

I have used the following technologies in the App:
React JS
Redux
React Hooks
Ruby on Rails
PostgreSQL

Context for Canix: This was a project created for an education company that wanted me to implement a front and backend that exemplified the uses of a spaced repetition methodology of learning.
https://en.wikipedia.org/wiki/Spaced_repetition


Setup:
In order to run the app on your local machine clone the repo and then navigate to the 'SpacedFlash' directory. You should also have both Ruby, Ruby on rails and Node installed

Afterwards run the following commands in seperate terminals:

1. bundle install
2. "rails db:setup"
3. "rails db:seed"
4. "rails s"
5. "npm install"
6. "npm start"

Before running the above steps feel free to add more seed information to the database!

This should run webpack and spin up the rails server and you should be able to open the application at
http://localhost:3000/#/

Premise: Create a testing interface with flashcards that helps implement the Spaced Repetition methodology. 

Design:

The project has been designed in the following way. There are boxes that contain flashcards. Each box represents the difficulty of a question. Difficulty is determined by how often you get the answer correct or incorrect.

You will receive a random flashcard when you start the test. When you answer the question one of two things will happen. If you got the answer correct then the flashcard will move up a box signifying that it is a less difficult card. If you get the answer incorrect then the flashcard will move back to the first box signifying that it is a harder question. You should never get the same card twice in a row!

The points are scored based on which box the card is in. If the card is in the hardest box(usually box 1) then you will be given points according to how many total boxes there are currently. For example if there are 4 boxes and you get a question in the hardest box correct you will get 4 points. If you get a question correct in the second hardest box and there are 4 boxes you will get 3 points etc. 

At the end of the test you may view your total points but the points will reset once you reset and take the test again!

Note that when you take the test again the flashcards and the perspective boxes that they have been moved to will persist, this is to support long term learning objectives and utilize the spaced repetition method!

Thank you for taking the time to view interview me for this position. I have truly enjoyed working on this project! 

If you have any questions about the project feel free to send me an email at jungterooi@gmail.com