import { MAKE_CLICKABLE, MAKE_UNCLICKABLE } from '../actions/clickable_actions'

const UnclickableReducer = (state = "", action) => {
    Object.freeze(state)

    let newState;

    switch (action.type) {
        case MAKE_CLICKABLE:
            newState = "";
            return newState;
        case MAKE_UNCLICKABLE:
            newState = "unclickable";
            return newState
        default:
            return state;
    }
}

export default UnclickableReducer;