const steps = Array.from(document.querySelectorAll("form .step"));
const nextBtn = document.querySelectorAll("form .next-btn");
const nextBtn2 = document.querySelectorAll("form .next-btn2");
const prevBtn = document.querySelectorAll("form .previous-btn");
const form = document.getElementById("form");
const form1 = Array.from(document.querySelectorAll(".form_Register"));
const form2 = document.getElementById("form_Register");

var triggerButton = document.querySelector('button');

const First_Name = document.getElementById('First_Name');
const Last_Name = document.getElementById('Last_Name');
const email1 = document.getElementById('email');
const pswrd = document.getElementById('Password');
const pswrd2 = document.getElementById('Confirm_Password');
const National_ID = document.getElementById('National_ID');
const Phone_Number = document.getElementById('Phone_Number');
const Department = document.getElementById('Department');

nextBtn.forEach((button) => {
    button.addEventListener("click", () => {

        if (!First_Name.checkValidity() || !Last_Name.checkValidity() || !email1.checkValidity() || !pswrd.checkValidity() || !pswrd2.checkValidity()) {
            var tmpSubmit = document.createElement('button');
            alert("Here");
            form2.appendChild(tmpSubmit);
            tmpSubmit.click();
            form2.removeChild(tmpSubmit);


        } else {
            // Form is valid, do whatever you like
            changeStep("next");
        }

    });
});
prevBtn.forEach((button) => {
    button.addEventListener("click", () => {
        changeStep("prev");
    });
});


function changeStep(btn) {
    let index = 0;
    const active = document.querySelector(".active_one");

    index = steps.indexOf(active);

    steps[index].classList.remove("active_one");

    if (btn === "next") {
        index++;

    } else if (btn === "prev") {
        index--;

    }
    steps[index].classList.add("active_one");

}