import { combineReducers } from 'redux';
import flashcardReducer from './flashcard_reducer';
import testDoneReducer from './test_done_reducer';
import pointsReducer from './points_reducer'

const entitiesReducer = combineReducers({
    flashcard: flashcardReducer,
    testDone: testDoneReducer,
    points: pointsReducer
})

export default entitiesReducer