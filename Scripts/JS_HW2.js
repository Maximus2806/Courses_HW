let Letter = /[a-z]/;
let UpLetter = /[A-Z]/;
let Digit = /[0-9]/;
let at = /[@]/;
// Checking for min and max length
const checkLength = function(str){
    if (str.length >= 5 && str.length <= 64){
        return true
    } else {
        return false
    }
};
// Checking for presence of leters, upper-case letters and digits
const checkChar = function(str){
    if (str.search(Letter) != -1 && str.search(UpLetter) != -1 && str.search(Digit) != -1 && str.search(at) != -1){
        return true
    } else{
        return false
    }
};
// Main module
let strForValid = prompt("Input your string: ");
const strValidator = function(str){
    if (checkChar(str) && checkLength(str)){
        alert("Succesful!!!")
        console.log("Succesful!!!")
    } else if (str.length !=0 && str.search(Letter) == -1){
            alert("At least one lower-case letter is required!")
            console.log("At least one-lower case letter is required!")
        } else if (str.length !=0 && str.search(UpLetter) == -1){
                alert("At least one upper-case letter is required!")
                console.log("At least one upper-case letter is required!")
            } else if (str.length !=0 && str.search(Digit) == -1){
                    alert("At least one number is required!")
                    console.log("At least one number is required!")
                } else if (str.length !=0 && str.search(at) == -1){
                        alert("At least one symbol '@' is required!")
                        onsole.log("At least one one symbol '@' is required!")
                    } else if (!checkLength(str) && str.length < 5 && str.length !=0){
                            alert("There are less than 5 characters in the string!")
                            console.log("There are less than 5 characters in the string!")
                        } else if (!checkLength(str) && str.length > 64){
                                alert("There are more than 64 characters in the string!")
                                console.log("There are more than 64 characters in the string!")
                            } else {
                                alert("The string should not be empty!")
                                console.log("The string should not be empty!")
                            }
};
strValidator(strForValid);