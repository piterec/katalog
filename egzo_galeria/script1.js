const email=document.getElementById("email");
const but=document.getElementById("validation");

but.addEventListener("click", validation);   
function validation(){
    
    let wartosc=email.value
    let regex = /[A-Za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z0-9]+/i;
    if(regex.test(wartosc)==true){
        alert("you have signed up for the newsletter!")
    }
    else{
        alert("please input a valid email format (name@domain.someting)")
    }
    
}
arkmode=document.getElementById("darkmode")
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

