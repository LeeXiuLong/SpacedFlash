import $ from 'jquery';

//get a new random flashcard and make sure the new one is not the same as the previous one
export const getFlashcard = (flashcardID) => {
    return $.ajax({
        method: "GET",
        url: `/api/flashcards/${flashcardID}`
    })
}

//update whether or not someone got the flashcard question correct or not
export const updateFlashcard = (flashcardID, gotCorrect) => {
    return $.ajax({
        method: "PATCH",
        url: `/api/flashcards/${flashcardID}`,
        data: { gotCorrect }
    })
}