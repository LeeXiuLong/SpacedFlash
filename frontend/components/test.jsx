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

    //grab a random flashcard when you start the test
    useEffect(()=>{dispatch(getRandomFlashcard(0))}, [])

    return (
        <div>
            <Timer isFlashcard = {false} initialTime={80} timeoutFunction ={testDone}/>
            <Flashcard flashcard={flashcard}/>
        </div>
    )
}

export default Test;