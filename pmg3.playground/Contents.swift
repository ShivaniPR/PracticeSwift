//Create a function called walk which will take two parameters and will return a String.
//
//The first parameter should be named direction and will be of type String, the argument label should be set as _.
//
//The second parameter should be named steps and will be of type Int, the argument label should be set as _.
//
//Inside the function return a string on which direction you have walked and how many steps did you take. Don’t forget to type cast steps
//
//The format of the return statement should be:
//
//return "You have walked " + String(steps) + " steps to the " + direction
//
//Then, create a String called resultStr and assign to it the function and what data you want to display.
//
//Finally, print the contents of resultStr.
//
//As an example let’s assume that direction is “North” and steps is 5. The resulting output should be:
//You have walked 5 steps to the North
//
func walk(_ direction:String , _ steps:Int )-> String{
    
    return "You have walked \(String(steps)) steps to the direction \(direction)"
}
var resultStr:String=walk("north",10)
print(resultStr)
