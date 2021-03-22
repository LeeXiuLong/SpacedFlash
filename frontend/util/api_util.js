import $ from 'jquery';

export const getFlashcard = (flashcardID) => {
    return $.ajax({
        method: "GET",
        url: `/api/flashcards/${flashcardID}`
    })
}

export const updateFlashcard = (flashcardID, gotCorrect) => {
    return $.ajax({
        method: "PATCH",
        url: `/api/flashcards/${flashcardID}`,
        data: { gotCorrect }
    })
}