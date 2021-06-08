function checkPass()
{
    let pass1 = document.getElementById('password');
    let pass2 = document.getElementById('re_password');
    let message = document.getElementById('confirmMessage');

    let goodColor = "#66cc66";
    let badColor = "#ff6666";

    if(pass1.value == pass2.value){
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!"
    } else {
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 