import { ADD_POINTS, RESET_POINTS } from '../actions/points_actions'

const PointsReducer = (state = 0, action) => {
    Object.freeze(state)

    let newState;

    switch (action.type) {
        case ADD_POINTS:
            newState = state;
            newState += action.pointValue
            return newState;
        case RESET_POINTS:
            newState = 0;
            return newState;
        default:
            return state;
    }
}

export default PointsReducer;