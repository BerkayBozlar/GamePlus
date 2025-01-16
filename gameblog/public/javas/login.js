document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('form');
    form.addEventListener('submit', handleLogin); 
});

function handleLogin(event) {
    event.preventDefault(); 
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    if (username === "berkay" && password === "12345") {
        console.log("Giriş başarılı!");
        location.href = "../index.html"; 
    } else {
        alert("Hatalı kullanıcı adı veya şifre!");
    }
}