//First let’s create a class called Tamagotchi which will be a subclass of Pets and assign some variables to it.
//
//It should have additional variables/attributes. Namely hunger of type Int, dirt of type Int, boredom of type Int, and drowsiness of type Int.
//
//Assign default values to your variables,  set all to 0 for now.
//
//Next, override your feed() function and call its superclass. Have it set your hunger to 0 while also increasing your boredom by 20, dirt by 20  and drowsiness by 10.
//
//Then, override your clean() function and call its superclass. Have it set your dirt to 0 while also increasing your hunger by 20, boredom by 20 and drowsiness by 10.
//
//Then, override your play() function and call its superclass. Have it set your boredom to 0 while also increasing your hunger by 20, dirt by 20 and drowsiness by 10.
//
//Then, Then, override your sleep() function and call its superclass. Have it set your drowsiness to 0 while also increasing your boredom by 20, hunger by 20 and dirt by 10.
//
//Next, create a function called check() have it print your 4 variables namely hunger, dirt, boredom, and drowsiness.
//
//Save your Tamagotchi class and move onto the next step.
//
//Finally, create a variable named game of type Tamagotchi and assign whatever you want for its name property.
//
//Call your game and call the methods to test out the app. Have fun and don’t let the numbers reach too high!

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

class Tamagotchi:Pets{
    var hunger:Int=0
    var dirt:Int=0
    var boredom:Int=0
    var drowsiness:Int=0
    
    override func feed(){
        super.feed()
        hunger=0
        dirt+=10
        boredom+=20
        drowsiness+=20
    }
    
    override func clean(){
        super.clean()
        hunger+=20
        dirt=0
        boredom+=20
        drowsiness+=10
    }
    
    override func play(){
        super.play()
        hunger+=20
        dirt+=20
        boredom=0
        drowsiness+=10
    }
    
    override func sleep(){
        super.sleep()
        hunger+=20
        dirt+=10
        boredom+=20
        drowsiness=0
    }
    
    func check(){
        print(boredom)
        print(dirt)
        print(drowsiness)
        print(hunger)
    }
    
}

var game:Tamagotchi=Tamagotchi()
game.name="Tommy"
game.sleep()
game.play()
game.feed()
game.clean()
game.check()
