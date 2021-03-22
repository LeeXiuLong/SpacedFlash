export const TEST_DONE = "TEST_DONE"

export const testDone = () => {
    return{
        type: TEST_DONE,
        done: true
    }
}