import React from 'react';
import { Link } from 'react-router-dom';

const Main = () => {
    return (
        <div>
            <header>
                <h1>Welcome to Header Flashes!</h1>

                <Link to="/flash_test">Take the Test!</Link>
                <Link to="/test_instructions">How to take the test!</Link>

                <h2>About Me</h2>
                <a href="https://github.com/leexiulong">Github</a>
                <a href="https://leexiulong.github.io/jourdan-ooi/">Portfolio</a>
                <a href="https://www.linkedin.com/in/jourdan-ooi/">LinkedIn</a>
            </header>
        </div>
    )
}

export default Main;