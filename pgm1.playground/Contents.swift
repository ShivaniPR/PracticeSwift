//Create a String variable named strOperator and set up an initial value that you want for it.
//
//Then create two Int variables named num1 and num2. You can assign any value you want for it.
//
//Lastly, create a third Int variable called result. You can initialize it with 0 or leave it be for now.
//
//Use strOperator as the “seed” of our switch statement.
//
//The first case should check if the value of operator is add (“+”). Create the logic by saving the resulting answer and saving it in the result variable. print the result before breaking out of the switch statement.
//
//The next case should check if the value of operator is minus (“-”). Create the logic by saving the resulting answer and saving it in the result variable. print the result before breaking out of the switch statement.
//
//The next case should check if the value of operator is multiply (“*” and “x”). Create the logic by saving the resulting answer and saving it in the result variable. print the result before breaking out of the switch statement.
//
//The next case should check if the value of operator is divide (“/”). Create the logic by saving the resulting answer and saving it in the result variable. print the result before breaking out of the switch statement.
//
//Finally, the default (catch-all) case should handle any wrong input of operators. If so, it should print “Operator does not exist”.

var strOperator:String = "+"
var num1:Int = 10
var num2:Int = 20
var result:Int = 0

switch strOperator{
case "+":
    result=num1+num2
case "-":
    result=num1-num2
case "*":
    result=num1*num2
case "/":
    result=num1/num2
default:
    print("Operator doesnt exist")
    
    
}
print(result)

for x in 1...5{
    for _ in 1...x{
        print("*",terminator:" ")
}
    print()
}
