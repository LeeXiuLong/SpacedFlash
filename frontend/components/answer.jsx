import React, { useState, useEffect } from 'react';
import { useDispatch} from 'react-redux';
import { getRandomFlashcard} from '../actions/flashcard_actions';
import { updateFlashcard } from '../util/api_util'

const Answer = (props) => {
    //Order on hooks matters
    //can put conditionals in hooks use effect callbacks

    //hooks
        //dispatch hook
    const dispatch = useDispatch();
        //hook for our state on our correct answers and color
    const [correctIndicator, setIndicator] = useState("")
    const [answerColor, setColor] = useState("")

    //When someone selects an answer wait five seconds then get a new flashcard
    useEffect(() => {
        if(correctIndicator !== ""){
            setTimeout(() => {
                const gotCorrect = correctIndicator === "✓" ? true : false
                dispatch(getRandomFlashcard(props.flashcardID))
                updateFlashcard(props.flashcardID, gotCorrect)
                setIndicator("")
            }, 3000)
            
        }
    }, [correctIndicator])

    //put a X or check when someone gets a right or wrong answer and change the color
    const clickAnswer = () => {
        if (props.correctAnswerID === parseInt(props.thisID)){
            setIndicator("✓")
            setColor("green")
        }else{
            setIndicator("X")
            setColor("red")
        }
    }

    return(
        <div className={answerColor} onClick={clickAnswer}>
            {props.choiceText}
            {correctIndicator}
        </div>
    )
}

export default Answer