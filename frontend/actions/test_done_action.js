export const TEST_DONE = "TEST_DONE";
export const RESET_TEST = "RESET_TEST";

//signal that the test is done
export const testDone = () => {
    return{
        type: TEST_DONE,
        done: true
    }
}

//start up the test again
export const resetTest = () => {
    return {
        type: RESET_TEST,
        done: false
    }
}