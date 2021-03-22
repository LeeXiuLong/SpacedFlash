import React, { useEffect } from 'react';
import { useSelector } from 'react-redux';

import { getRandomFlashcard } from '../actions/flashcard_actions';
import { testDone } from '../actions/test_done_action';

import Flashcard from './flashcard';
import Timer from './timer';
//setInterval setTimeout 

const Test = () => {

    //grab flashcard from our redux store
    const flashcard = useSelector(state => state.entities.flashcard)
    const points = useSelector(state => state.entities.points)

    //grab a random flashcard when you start the test
    useEffect(()=>{dispatch(getRandomFlashcard(0))}, [])

    //render the end of test component
    let testFinished = () => {
        dispatch(testDone())
    }

    return (
        <div>
            <Timer isFlashcard = {false} initialTime={80} timeoutFunction ={testFinished}/> left on this test
            <div>
                <h3>Current Total Points: {points}</h3>
            </div>
            <Flashcard flashcard={flashcard}/>
        </div>
    )
}

export default Test;