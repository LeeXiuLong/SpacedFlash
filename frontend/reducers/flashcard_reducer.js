import { RECEIVE_FLASHCARD } from '../actions/flashcard_actions'

const FlashcardReducer = (state = {}, action) => {
    Object.freeze(state)
    
    let newState;

    switch(action.type){
        case RECEIVE_FLASHCARD:
            newState = action.flashcard
            return newState;
        default:
            return state;
    }
}

export default FlashcardReducer;