darkmode=document.getElementById("darkmode")
darkmode.addEventListener("click", toggle)
let dark= false
function toggle(){
    
    if(dark==false){
        dark=true
        document.body.style.color="whitesmoke"
        document.body.style.backgroundColor="rgb(98, 97, 97)"
    }
    else{
        dark=false
        document.body.style.backgroundColor="whitesmoke"
        document.body.style.color="rgb(98, 97, 97)"
    }
}