document.addEventListener('DOMContentLoaded', function () {
	document.querySelectorAll(".tablinks")[0].click();
});
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" bg-gray-600", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " bg-gray-600";
}