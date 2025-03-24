function checkCode() {
    var code = prompt("Bitte geben Sie den Code ein:");
    if (code === "höhö") {  // Hier den gewünschten Code eintragen
        return true;
    } else {
        alert("Falscher Code! Zugriff verweigert.");
        window.location.href = "https://www.google.com"; // Umleitung bei falschem Code
        return false;
    }
}

// Code direkt beim Laden der Seite abfragen
checkCode();