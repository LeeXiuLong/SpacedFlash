import { TEST_DONE } from '../actions/test_done_action';

const TestDoneReducer = (state = false, action) => {
    Object.freeze(state)

    let newState;

    switch (action.type) {
        case TEST_DONE:
            newState = action.done
            return newState;
        default:
            return state;
    }
}

export default TestDoneReducer;