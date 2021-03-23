import React, { useState, useEffect } from 'react';
import { useDispatch} from 'react-redux';
import { getRandomFlashcard} from '../actions/flashcard_actions';
import { updateFlashcard } from '../util/api_util';
import { addPoints } from '../actions/points_actions';
import { makeClickable, makeUnclickable } from '../actions/clickable_actions';

const Answer = (props) => {

    //hooks
        //dispatch hook
    const dispatch = useDispatch();
        //hook for our state on our correct answers and color
    const [correctIndicator, setIndicator] = useState("");
    //const [unclickable, setUnclickable] = useState("");

    //When someone selects an answer
        //stop them from submitting any other answers
        //update the flashcard selected
        // wait three seconds then get a new flashcard
    useEffect(() => {
        if(correctIndicator !== ""){
            setTimeout(() => {
                const gotCorrect = correctIndicator === "✓" ? true : false;
                dispatch(getRandomFlashcard(props.flashcardID));
                updateFlashcard(props.flashcardID, gotCorrect);
                setIndicator("");
                dispatch(makeClickable());
            }, 3000)
            
        }
    }, [correctIndicator])

    //put a X or check when someone gets a right or wrong answer and change the color
    //add the points for a correct answer
    const clickAnswer = () => {
        dispatch(makeUnclickable())
        if (props.correctAnswerID === parseInt(props.thisID)){
            let pointValue = props.totalNumBoxes - (props.boxNumber - 1);
            setIndicator("✓");
            dispatch(addPoints(pointValue));
        }else{
            setIndicator("X");
        }
    }

    return(
        <div onClick={clickAnswer}>
            {props.choiceText}
            {correctIndicator}
        </div>
    )
}

export default Answer