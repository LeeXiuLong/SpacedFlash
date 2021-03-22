import React, { useState, useEffect } from 'react';
import { useDispatch } from 'react-redux';

const Timer = (props) => {

    //time variable we will manipulate for our timer
    let [time, setTime] = useState(props.initialTime)

    //timer variable that references the initial time we started with
    let [initialTime, setInitialTime] = useState(props.initialTime)
    let [flashcardId, setFlashcardID] = useState(props.isFlashcard ? props.flashcardId : null)

    //dispatch hook
    dispatch = useDispatch();

    //hook to update the time when we get a new card
    useEffect(() => {
        if(flashcardId){
            if(props.flashcardId !== flashcardId){
                setTime(props.initialTime);
                setFlashcardID(props.flashcardId);
            }
        }
        // if (initialTime !== props.initialTime) {
        //     setTime(props.initialTime);
        //     setInitialTime(props.initialTime);
        // }

        //making our timer
        const timerId = setInterval(()=>{
            if(time === 0){
                dispatch(props.timeoutFunction())
            }
            setTime(time => time - 1)
        },1000)
        return () => clearInterval(timerId)
    })

    return(
        <div>
            <div>{time} seconds left</div>
        </div>
    )

}

export default Timer