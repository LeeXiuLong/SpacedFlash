export const ADD_POINTS = "ADD_POINTS";
export const RESET_POINTS = "RESET_POINTS";

//add points and send them to the redux store
export const addPoints = (pointValue) => {
    return {
        type: ADD_POINTS,
        pointValue
    }
}

//reset the total points to 0 and send it to the redux store
export const resetPoints = () => {
    return {
        type: RESET_POINTS,
    }
}