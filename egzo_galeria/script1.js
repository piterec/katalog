const email=document.getElementById("email");
const submit=document.getElementById("validation");


function validation(){

   let wartosc=document.getElementById('surveyForm').email.value
    console.log(wartosc)
}
submit.addEventListener("click", validation());


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

