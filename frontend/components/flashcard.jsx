import React, {useState} from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { getRandomFlashcard } from '../actions/flashcard_actions';
import { updateFlashcard } from '../util/api_util'
import Answer from './answer'
import Timer from './timer'

const Flashcard = (props) => {

    //hooks
        //dispatch hook
    let dispatch = useDispatch();

        //flashcard time limit hook from redux store
    let flashTime = useSelector(state => state.entities.flashcard.flashcard_time)

    //declare variables for answer and timer
    let answers;
    let timer;


    //When the flashcard times out get another random flashcard and update this one.
    const flashcardTimeout = () =>{
        dispatch(getRandomFlashcard(props.flashcard.id))
        updateFlashcard(props.flashcard.id, false)
    }

    //Wait for our redux store to be accessible
    if(props.flashcard.answer_choices){

        //Make our flashcard timer
        timer = <Timer isFlashcard={true} flashcardId={props.flashcard.id} initialTime={flashTime} timeoutFunction={flashcardTimeout} />

        //Get our answer choice ids
        let answerChoiceIds = Object.keys(props.flashcard.answer_choices)

        //Map over answer choice ids and make Answer choice components
        answers = answerChoiceIds.map(key => {

            let choiceText = props.flashcard.answer_choices[key].answer_text

            return <li key={key}>
                <Answer 
                    flashcardID={props.flashcard.id} 
                    correctAnswerID={props.flashcard.correct_answer_id} 
                    thisID={key} 
                    choiceText={choiceText}
                    boxNumber = {props.flashcard.box_number}
                    totalNumBoxes={props.flashcard.total_num_boxes}
                    />
            </li>
        })
    }


    return(
        <div>
            <h1>{props.flashcard.question}</h1>
            <div>{timer} left on this question</div>
            <ul>{answers}</ul>
        </div>
    )
}

export default Flashcard