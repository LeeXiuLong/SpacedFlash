export const MAKE_CLICKABLE = "MAKE_CLICKABLE"
export const MAKE_UNCLICKABLE = "MAKE_UNCLICKABLE"

//receive a random flashcard and pass it to the redux store
export const makeClickable = () => {
    return {
        type: MAKE_CLICKABLE
    }
}

export const makeUnclickable = () => {
    return {
        type: MAKE_UNCLICKABLE
    }
}