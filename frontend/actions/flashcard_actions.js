export const RECEIVE_FLASHCARD = "RECEIVE_FLASHCARD";
import * as apiUtil from '../util/api_util';

//receive a random flashcard and pass it to the redux store
export const receiveFlashcard = flashcard => {
    return {
        type: RECEIVE_FLASHCARD,
        flashcard
    }
}

export const getRandomFlashcard = (flashcardId) => {
    return dispatch => {
        return apiUtil.getFlashcard(flashcardId)
            .then(flashcard => dispatch(receiveFlashcard(flashcard)));
    }
}