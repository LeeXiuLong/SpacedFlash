import React, { useState, useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { Link } from 'react-router-dom'
import { resetTest } from '../actions/test_done_action'
import { resetPoints } from '../actions/points_actions'


//render this function when the test finishes
const TimeUp = () => {

    let dispatch = useDispatch();

    let points = useSelector(state => state.entities.points);

    //use this function to restart the test!
    let testReset = () => {
        dispatch(resetTest());
        dispatch(resetPoints());
    }

    return(
        <div>
            <h1>Times up! You scored {points} points during this round!</h1>
            <h1>Go back to the main page or take the test again!</h1>
            <button onClick={testReset}>Take Test Again!</button>
            <br/>
            <Link to="/">Home Page</Link>
        </div>
    )
}

export default TimeUp;