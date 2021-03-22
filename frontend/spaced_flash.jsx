import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root'
import configureStore from './store/store'
import { getRandomFlashcard } from './actions/flashcard_actions' 

document.addEventListener("DOMContentLoaded", () => {
    let store;
    store = configureStore();
    const root = document.getElementById("root");

    window.getState = store.getState;
    window.dispatch = store.dispatch;
    window.getRandomFlashcard = getRandomFlashcard;

    ReactDOM.render(<Root store ={store} />, root);
});