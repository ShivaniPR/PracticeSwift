//First let’s create a class called Pets and assign some variables to it.
//
//It should have a name of type String and age of type Int.
//
//You can go ahead and assign default values to your variables, name should be “” and age should be 0.
//
//Next, let’s create a function called feed() and have it print "name has been fed”.
//
//Then, create a function called clean() and have it print “name has taken a bath”.
//
//Then, create a function called play() and have it print “name enjoyed playing with you”.
//
//Then, create a function called sleep() and have it print “name went to sleep”.
//
//Save your class and move on to the next step.
//
//Finally, create a variable named pet of type Pets and assign whatever you want for its name property.
//
//Call your pet variable and call the functions to test out the app.
//

class Pets{
    var name:String=""
    var age:Int=0
    
    func feed(){
        print("\(name) has been fed")
    }
    
    func clean(){
        print("\(name) has taken bath")
    }
    
    func play(){
        print("\(name) enjoyed playing with you")
    }
    
    func sleep(){
        print("\(name) went to sleep")
    }
    
    func years(){
        print("\(name) is \(age) yrs old")
    }
}

var pet:Pets=Pets()
pet.name="Tommy"
pet.age=10

pet.feed()
pet.clean()
pet.sleep()
pet.play()
pet.years()

