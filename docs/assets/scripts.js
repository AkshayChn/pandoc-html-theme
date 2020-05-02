/* make a func to auto hide the sidebar on click on any element only for mobile */
document.addEventListener("DOMContentLoaded", function() {
  //console.log("Page Loaded Fully");
  document.getElementById("overlay").style.visibility = "hidden";
});

//dark  mode checker
var checkbox = document.querySelector("input[name=themeToggleCheckbox]");

checkbox.addEventListener( 'change', function() {
    if(this.checked) {
        // Checkbox is checked..
        console.log("Checked");
        document.getElementById("bodyId").className = "theme-dark-1";
    } else {
        // Checkbox is not checked..
        console.log("Unchecked");
        document.getElementById("bodyId").className = "theme-light-1";
        
    }
});

/*Collapse the sidebar on clicking the body*/
function bodyClick() {
  document.getElementById("check").checked = false;
}
