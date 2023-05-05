answerCorrectly = () => {
    // Creating a clicking event
    var click = new MouseEvent('click');

    // When all exercises are completed
    const finish = document.getElementsByClassName("altissia-main-button false")[0];
    if (typeof finish != "undefined") {
        const result = document.getElementsByClassName("user-result-box")[0];
        if (result.innerText == "Your score is 100%") {
            finish.dispatchEvent(click);
        }
        return 0;
    }

    const answers = document.getElementsByClassName("multiple-choice-buttons-list")[0].children;
    const validate = document.getElementsByClassName("footer-button-bar-btn")[0];

    // Getting the correct answer from localStorage
    const localStorage = window.localStorage;
    const correctAnswer = localStorage.getItem("answer");


    // Search for the correct answer then clicking on it
    for (let answer of answers) {
        if (answer.innerText == correctAnswer) {
            answer.children[0].dispatchEvent(click);
        }
    }

    // Validating answer
    validate.dispatchEvent(click);

    // Proceeding to next question
    validate.dispatchEvent(click);

    const title = document.getElementsByTagName("title")[0];
    title.innerText += " Ok";
}

if (document.readyState == "complete") {
    answerCorrectly();
} else {
    document.onreadystatechange = () => {
        if (document.readyState == "complete") {
            answerCorrectly();
        }
    }    
}
