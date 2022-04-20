let yourAge = prompt("Input your age: ");
const checkAge_withInput = function(age){
    if (isNaN(age)) {
        document.write("Age is not a number but ", typeof(age))
        console.log("Age is not a number but", typeof(age))
    } else {
        if (age < 18) {
            document.write("You don't have access cause your age is ", age, " It's less then 18")
            console.log("You don't have access cause your age is ", age, " It's less then 18")
        } else if (age >= 18 && age < 60) {
            document.write("Welcom !")
            console.log("Welcom !")
        } else if (age > 60) {
            document.write("Keep calm and watch Culture channel")
            console.log("Keep calm and watch Culture channel")
        } else {
            document.write("Technical work")
            console.log("Technical work")
        };
    }
        
};
checkAge_withInput(yourAge);