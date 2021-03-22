# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

#reset db on seed
Box.destroy_all
AnswerChoice.destroy_all
Flashcard.destroy_all
FlashcardAnswer.destroy_all

#1-100 rng%mod_p == 0

box1 = Box.create({mod_p: 1, box_number: 1})
box2 = Box.create({mod_p: 3, box_number: 2})
box3 = Box.create({mod_p: 7, box_number: 3})
box4 = Box.create({mod_p: 11, box_number: 4})
box5 = Box.create({mod_p: 20, box_number: 5})

#flashcard1
flashcard1 = Flashcard.create({question: "What is 2+2?", time: 30, box_id: box1.id}) 
answer1 = AnswerChoice.create({answer_text: "1"})
answer4 = AnswerChoice.create({answer_text: "4"})
answer6 = AnswerChoice.create({answer_text: "6"})
flashcard1_answer_1 = FlashcardAnswer.create({flashcard_id: flashcard1.id, answer_choice_id: answer1.id, correct_answer: false})
flashcard1_answer_2 = FlashcardAnswer.create({flashcard_id: flashcard1.id, answer_choice_id: answer4.id, correct_answer: true})
flashcard1_answer_3 = FlashcardAnswer.create({flashcard_id: flashcard1.id, answer_choice_id: answer6.id, correct_answer: false})



#flashcard2
flashcard2 = Flashcard.create({question: "What is the Mitochondria?", time: 10, box_id: box1.id})
answer_powerhouse = AnswerChoice.create({answer_text: "The powerhouse of the cell"})
answer_mighty = AnswerChoice.create({answer_text: "A mighty chondria"})
answer_scam = AnswerChoice.create({answer_text: "A dria that tries to scam you"})
flashcard2_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_powerhouse.id, flashcard_id: flashcard2.id, correct_answer: true})
flashcard2_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_mighty.id, flashcard_id: flashcard2.id, correct_answer: false})
flashcard2_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_scam.id, flashcard_id: flashcard2.id, correct_answer: false})


#flashcard3
flashcard3 = Flashcard.create({question: "Which characters are useless?", time: 5, box_id: box1.id})
answer_sakura = AnswerChoice.create({answer_text: "Sakura"})
answer_ino = AnswerChoice.create({answer_text: "Ino"})
answer_aota = AnswerChoice.create({answer_text: "All of the above"})
flashcard3_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_sakura.id, flashcard_id: flashcard3.id, correct_answer: false})
flashcard3_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_ino.id, flashcard_id: flashcard3.id, correct_answer: false})
flashcard3_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_aota.id, flashcard_id: flashcard3.id, correct_answer: true})

#flashcard4
flashcard4 = Flashcard.create({question: "When should you instalock duelists?", time: 15, box_id: box1.id})
answer_always = AnswerChoice.create({answer_text: "Always"})
answer_never = AnswerChoice.create({answer_text: "Never"})
answer_sometimes = AnswerChoice.create({answer_text: "Sometimes"})
flashcard4_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_always.id, flashcard_id: flashcard4.id, correct_answer: true})
flashcard4_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_never.id, flashcard_id: flashcard4.id, correct_answer: false})
flashcard4_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_sometimes.id, flashcard_id: flashcard4.id, correct_answer: false})


#flashcard5
flashcard5 = Flashcard.create({question: "Who stole the cookies from the cookie jar?", time: 10, box_id: box1.id})
answer_whome = AnswerChoice.create({answer_text: "Who me?"})
answer_yesyou = AnswerChoice.create({answer_text: "Yes you!"})
answer_couldntbe = AnswerChoice.create({answer_text: "Couldn't be!"})
answer_barney = AnswerChoice.create({answer_text: "Barney"})
flashcard5_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_whome.id, flashcard_id: flashcard5.id, correct_answer: false})
flashcard5_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_yesyou.id, flashcard_id: flashcard5.id, correct_answer: false})
flashcard5_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_couldntbe.id, flashcard_id: flashcard5.id, correct_answer: false})
flashcard5_answer_4 = FlashcardAnswer.create({answer_choice_id: answer_barney.id, flashcard_id: flashcard5.id, correct_answer: true})


#flashcard6
flashcard6 = Flashcard.create({question: "Cheese is the best", time: 14, box_id: box1.id})
answer_true = AnswerChoice.create({answer_text: "True"})
answer_false = AnswerChoice.create({answer_text: "False"})
flashcard6_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_true.id, flashcard_id: flashcard6.id, correct_answer: true})
flashcard6_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_false.id, flashcard_id: flashcard6.id, correct_answer: false})

#flashcard7
flashcard7 = Flashcard.create({question: "Who is the baddest of them all?", time: 14, box_id: box1.id})
answer_I = AnswerChoice.create({answer_text: "I"})
answer_me = AnswerChoice.create({answer_text: "Me"})
answer_you = AnswerChoice.create({answer_text: "You"})
answer_they = AnswerChoice.create({answer_text: "They"})
flashcard7_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_I.id, flashcard_id: flashcard7.id, correct_answer: true})
flashcard7_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_me.id, flashcard_id: flashcard7.id, correct_answer: false})
flashcard7_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_you.id, flashcard_id: flashcard7.id, correct_answer: false})
flashcard7_answer_4 = FlashcardAnswer.create({answer_choice_id: answer_they.id, flashcard_id: flashcard7.id, correct_answer: false})

#flashcard8
flashcard8 = Flashcard.create({question: "Learn 2 ___?", time: 14, box_id: box1.id})
answer_lose = AnswerChoice.create({answer_text: "Lose"})
answer_tie = AnswerChoice.create({answer_text: "Tie"})
answer_win = AnswerChoice.create({answer_text: "Win"})
flashcard8_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_lose.id, flashcard_id: flashcard8.id, correct_answer: false})
flashcard8_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_tie.id, flashcard_id: flashcard8.id, correct_answer: false})
flashcard8_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_win.id, flashcard_id: flashcard8.id, correct_answer: true})

#flashcard9
flashcard9 = Flashcard.create({question: "Do you believe?", time: 14, box_id: box1.id})
answer_cher = AnswerChoice.create({answer_text: "In life after love"})
answer_miracles = AnswerChoice.create({answer_text: "Miracles"})
answer_magic = AnswerChoice.create({answer_text: "Magic"})
flashcard9_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_cher.id, flashcard_id: flashcard9.id, correct_answer: true})
flashcard9_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_miracles.id, flashcard_id: flashcard9.id, correct_answer: false})
flashcard9_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_magic.id, flashcard_id: flashcard9.id, correct_answer: false})

#flashcard10
flashcard10 = Flashcard.create({question: "Will it _____?", time: 14, box_id: box1.id})
answer_blend = AnswerChoice.create({answer_text: "Blend"})
answer_airfry = AnswerChoice.create({answer_text: "Air Fry"})
answer_toast = AnswerChoice.create({answer_text: "Toast"})
flashcard10_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_blend.id, flashcard_id: flashcard10.id, correct_answer:true})
flashcard10_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_airfry.id, flashcard_id: flashcard10.id, correct_answer:false})
flashcard10_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_toast.id, flashcard_id: flashcard10.id, correct_answer:false})

#flashcard11
flashcard11 = Flashcard.create({question: "Jam and ____", time: 14, box_id: box1.id})
answer_fries = AnswerChoice.create({answer_text: "Fries"})
answer_rice = AnswerChoice.create({answer_text: "Rice"})
flashcard11_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_fries.id, flashcard_id: flashcard11.id, correct_answer:false})
flashcard11_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_toast.id, flashcard_id: flashcard11.id, correct_answer:true})
flashcard11_answer_3 = FlashcardAnswer.create({answer_choice_id: answer_rice.id, flashcard_id: flashcard11.id, correct_answer:false})

#flashcard12
flashcard12 = Flashcard.create({question: "Lebron James is the GOAT", time: 14, box_id: box1.id})
flashcard12_answer_1 = FlashcardAnswer.create({answer_choice_id: answer_true.id, flashcard_id: flashcard12.id, correct_answer:false})
flashcard12_answer_2 = FlashcardAnswer.create({answer_choice_id: answer_false.id, flashcard_id: flashcard12.id, correct_answer:true})
