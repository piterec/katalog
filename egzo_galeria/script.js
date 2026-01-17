const darkmode=document.getElementById("darkmode")
darkmode.addEventListener("click", toggle)
let dark= false
function toggle(){
    
    if(dark==false){
        dark=true
        document.body.style.color="whitesmoke"
        document.body.style.backgroundColor="rgb(172, 169, 169)"
    }
    else{
        dark=false
        document.body.style.backgroundColor="whitesmoke"
        document.body.style.color="rgb(172, 169, 169)"
    }
}


const form = document.getElementById("search");
const lista = document.getElementById("lista");

let timeout = null;

form.addEventListener("input", () => {
    
    clearTimeout(timeout);

    timeout = setTimeout(() => {
        const formData = new FormData(form);

        fetch("logic.php", {
            method: "POST",
            body: formData
        })
        .then(res => res.text())
        .then(html => {
            lista.innerHTML = html;
        });
    }, 150);
});

