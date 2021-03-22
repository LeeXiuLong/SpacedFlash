export const RECEIVE_FLASHCARD = "RECEIVE_FLASHCARD"
import * as apiUtil from '../util/api_util'

export const receiveFlashcard = flashcard => {
    return {
        type: RECEIVE_FLASHCARD,
        flashcard
    }
}

export const getRandomFlashcard = (flashcardId) => {
    return dispatch => {
        return apiUtil.getFlashcard(flashcardId)
            .then(flashcard => dispatch(receiveFlashcard(flashcard)))
    }
}