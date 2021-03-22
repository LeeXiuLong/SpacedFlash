import React, { useState, useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { Link } from 'react-router-dom'


//render this function when the test finishes
const TimeUp = () => {
    return(
        <div>
            <h1>Times up! Go back to the main page or take the test again!</h1>
            <Link to="/flash_test">Take the Test Again!</Link>
            <Link to="/">Home Page</Link>
        </div>
    )
}

export default TimeUp