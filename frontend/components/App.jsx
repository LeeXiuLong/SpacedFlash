import React from 'react';
import { Route } from 'react-router-dom'
import { useSelector } from 'react-redux';
import Test from './test'
import Main from './Main'
import TimeUp from './timeUp'

const App = () => {

    //Check to see if the test is done
    const testDone = useSelector(state => state.entities.testDone)

    return (
        <div className="app">
            <Route path='/flash_test' component={testDone ? TimeUp : Test}/>
            <Route exact path="/" component={Main}/>
        </div>
    )
}

export default App;