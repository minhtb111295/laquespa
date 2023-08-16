function gotoPage(page) {
    const currentURL = window.location.href;
    const objURL = new URL(currentURL);
    objURL.searchParams.set("page", page);
    const newURL = objURL.href;
    window.location.href = newURL;
}