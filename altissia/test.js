window.onload = () => {
    alert("onload");
}

if (document.readyState == "loading") {
    alert("loading");
} if (document.readyState == "interactive") {
    alert("interactive");
} if (document.readyState == "complete") {
    alert("complete1");
} else {
    document.onreadystatechange = () => {
        if (document.readyState == "loading") {
            alert("loading2");
        } else if (document.readyState == "interactive") {
            alert("interactive2");
        } else if (document.readyState == "complete") {
            alert("complete2");
        }
    }
}