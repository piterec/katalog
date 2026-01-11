darkmode=document.getElementById("darkmode")
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





const form = document.getElementById("surveyForm");
const message = document.getElementById("surveyMessage");

form.addEventListener("submit", function (e) {
    e.preventDefault();

    const data = {
        comment: form.comment.value,
        date: new Date().toISOString()
    }


    let surveys = JSON.parse(localStorage.getItem("surveys")) || [];


    surveys.push(data);


    localStorage.setItem("surveys", JSON.stringify(surveys));


    message.textContent = "Thank you! Your answers have been saved.";
    message.style.color = "green";


    form.reset();
});