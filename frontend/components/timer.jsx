import React, { useState, useEffect } from 'react';
import { useDispatch } from 'react-redux';

const Timer = (props) => {

    //time variable we will manipulate for our timer
    let [time, setTime] = useState(props.initialTime);

    //variable that references the current flashcard
    let [flashcardId, setFlashcardID] = useState(props.isFlashcard ? props.flashcardId : null);

    //dispatch hook
    dispatch = useDispatch();

    //hook to update the time when we get a new card
    useEffect(() => {
        //if the timer is a flashcard timer
        if(flashcardId){
            //make sure to update the timer once we get a new flashcard
            if(props.flashcardId !== flashcardId){
                setTime(props.initialTime);
                setFlashcardID(props.flashcardId);
            }
        }

        //making our timer
        const timerId = setInterval(()=>{
            //once the timer runs out run the timeout function
            if(time === 0){
                props.timeoutFunction();
            }
            setTime(time => time - 1);
        },1000)
        // use clear interval when the component un-renders 
        //so that we may not have multiple setIntervals on the re-render
        return () => clearInterval(timerId)
    })

    return(
        <div>
            <div>
                <h3>{time}</h3>
            </div>
        </div>
    )

}

export default Timer;