getAnswer = () => {
    const title = document.getElementsByTagName("title")[0];

    // Creating a clicking event
    const click = new MouseEvent('click');

    // When all exercises are completed
    const finish = document.getElementsByClassName("altissia-main-button false")[0];
    if (typeof finish != "undefined") {
        const result = document.getElementsByClassName("user-result-box")[0];
        if (result.innerText != "Your score is 100%") {
            title.innerText = "Close me";
        }
        return 0;
    }
    
    const answers = document.getElementsByClassName("multiple-choice-buttons-list")[0].children;
    const validate = document.getElementsByClassName("footer-button-bar-btn")[0];

    // Clicking on first answer
    answers[0].dispatchEvent(click);

    // Validating answer
    validate.dispatchEvent(click);

    // Searching for correct answer and saving it to localStorage
    const localStorage = window.localStorage;
    for (let answer of answers) {
        if (answer.children[0].classList.value.includes("correct")) {
            localStorage.setItem("answer", answer.innerText);
        }
    }

    // Proceeding to next question
    validate.dispatchEvent(click);

    title.innerText += " Ok";
}

if (document.readyState == "complete") {
    getAnswer();
} else {
    document.onreadystatechange = () => {
        if (document.readyState == "complete") {
            getAnswer();
        }
    }
}
