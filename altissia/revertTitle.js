revertTitle = () => {
    const title = document.getElementsByTagName("title")[0];
    title.innerText = "Exercise";
}

if (document.readyState == "complete") {
    revertTitle();
} else {
    document.onreadystatechange = () => {
        if (document.readyState == "complete") {
            revertTitle();
        }
    }
}
