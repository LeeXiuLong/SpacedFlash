import { combineReducers } from 'redux';
import flashcardReducer from './flashcard_reducer';
import testDoneReducer from './test_done_reducer';

const entitiesReducer = combineReducers({
    flashcard: flashcardReducer,
    testDone: testDoneReducer
})

export default entitiesReducer