function checkForm(){
    /*Declareation des variables filtres*/
    var filtmail = new RegExp ("^[a-z0-9.-]+@+[a-z0-9.-]{2,}.[a-z]{2,4}$");
    var filmotdepas = new RegExp ("^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[$@])\S{8,12}$");
    var filconfir = new RegExp ("^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[$@])\S{8,12}$");
    var filident = new RegExp("^[A-Za-z]+$");
    var filadresse = new RegExp ("^[0-9] [A-Za-z]+ [A-Za-z]+$");
    var filcodpos = new RegExp ("^[0-9]{5}$");
    var filville = new RegExp ("^[A-Za-z]+$");
    /*Declaration des variables*/
    var mail = filtmail.test(document.getElementById("mail").value);
    var motdepa = filmotdepas.test(document.getElementById("password").value);
    var confir = filconfir.test(document.getElementById("confi").value);
    var prenom = filident.test(document.getElementById("prenom").value);
    var nom = filident.test(document.getElementById("nom").value);
    var adresse = filadresse.test(document.getElementById("adresse").value);
    var codpos = filcodpos.test(document.getElementById("codpost").value);
    var ville = filville.test(document.getElementById("ville").value);
    if(!mail){
        document.write("le mail est incorrect")
    }
    if(!motdepa){
        document.write("le mot de passe doit contenir une lettre majuscule et miniscule des chiffres et caractéres speciaux")
    }
    if(!confir){
        document.write("le mot de passe n'est pas identique")
    }
    if(!prenom){
        document.write("Veuillez renseigner votre prénom")
    }
    if(!nom){
        document.write("Veuillez renseigner votre nom")
    }
    if(!adresse){
        document.write("Veuillez renseigner votre adresse postale")
    }
    if(!codpos){
        document.write("Veuillez renseigner votre code postal")
    }
    if(!ville){
        document.write("Veuillez renseigner votre ville")
    }
    
}