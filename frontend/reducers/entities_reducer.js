import { combineReducers } from 'redux';
import flashcardReducer from './flashcard_reducer';
import testDoneReducer from './test_done_reducer';
import pointsReducer from './points_reducer'
import unclickableReducer from './clickable_reducer'

const entitiesReducer = combineReducers({
    flashcard: flashcardReducer,
    testDone: testDoneReducer,
    points: pointsReducer,
    unclickable: unclickableReducer
})

export default entitiesReducer