import React from 'react';
import { useDispatch } from 'react-redux';
import { Link } from 'react-router-dom';
import { resetPoints } from '../actions/points_actions';
import { resetTest } from '../actions/test_done_action';

const Main = () => {

    //get the page back to the test
    let dispatch = useDispatch();
    let redoTest = () => {
        dispatch(resetTest());
        dispatch(resetPoints());
    }

    return (
        <div>
            <header>
                <h1>Welcome to Spaced Flashes!</h1>

                <Link onClick={redoTest} to="/flash_test">Take the Test!</Link>

                <h2>About Me</h2>
                <a href="https://github.com/leexiulong">Github</a>
                <p>    </p>
                <a href="https://leexiulong.github.io/jourdan-ooi/">Portfolio</a>
                <p>    </p>
                <a href="https://www.linkedin.com/in/jourdan-ooi/">LinkedIn</a>
            </header>
        </div>
    )
}

export default Main;