//For the Pets class
//
//First, set up a basic initializer for your Pets class. Make an initializer with no arguments and have it set up a basic name, you can set the value to whatever you want.
//
//Next, create an initializer take takes the name argument and set it as the initial name.
//
//Finally, Test out your Pets class to see if it works.
//
//For the Tamagotchi class
//
//First, set up a basic initializer for your Tamagotchi class. Remember to call your super init to have it set up your basic name. Additionally, set boredom to 60 so your users can start playing with their virtual pets immediately after initializing.
//
//
//Next, create an initializer that takes the name argument and set it by calling your super init class.  Additionally, set boredom to 60 so your users can start playing with their virtual pets immediately after initializing.
//
//Then, modify the feed(), clean(), play(), and sleep() function that you have created, make it so that it checks if the value is 0 before deciding the appropriate course of action.
//
//For the feed() function check if hunger is 0, if it is then print out “\(name) is already full”. Else just call the super class and do the same operations as before.
//
//For the clean() function check if dirt is 0, if it is then print out “\(name) is already clean”. Else just call the super class and do the same operations as before.
//
//For the play() function check if boredom is 0, if it is then print out “\(name) is already done playing”. Else just call the super class and do the same operations as before.
//
//For the sleep() function check if drowsiness is 0, if it is then print out “\(name) has already slept“. Else just call the super class and do the same operations as before.
//
//Next, modify the check() function. Let the values print same as before but add these if statements after the printing of values.
//
//if hunger is >= 60 then print out “\(name) is hungry”.
//
//if dirt is >=  60 then print out “\(name) is dirty”.
//
//if boredom is >= 60 then print out “\(name) is bored”.
//
//if drowsiness is >= 60 then print out “\(name) is sleepy”.
//
//
//Finally, save your progress and test out your new and improved Tamagotchi app.
class Pets{
    var name:String=""
    var age:Int=0
    
    init(){
        name="Ram"
    }
    
    init(_ name:String){
        self.name=name
    }
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

var pet=Pets("Shyam")
print(pet.name)


class Tamagotchi:Pets{
    var hunger:Int=0
    var dirt:Int=0
    var boredom:Int=0
    var drowsiness:Int=0
    
    override init(){
        super.init()
        boredom=60
    }
    
    override init(_ name:String){
        super.init(name)
        boredom=60
    }
    override func feed(){
        if hunger == 0 {
            print("\(name) is already full")
        }
        else{
            super.feed()
            hunger=0
            dirt+=20
            boredom+=20
            drowsiness+=10
        }
        
    }
    
    override func clean(){
        if dirt == 0 {
            print("\(name) is already clean")
        }
        else{
            super.clean()
            hunger+=20
            dirt=0
            boredom+=20
            drowsiness+=10
        }
    }
    
    override func play(){
        if boredom == 0 {
            print("\(name) is already done playing")
        }
        else{
            super.play()
            hunger+=20
            dirt+=20
            boredom=0
            drowsiness+=10
        }
    }
    
    override func sleep(){
        if drowsiness == 0 {
            print("\(name) has already slept")
        }
        else{
            super.sleep()
            hunger+=20
            dirt+=10
            boredom+=20
            drowsiness=0
        }
    }
    
    func check(){
        print("hunger: \(hunger)")
        print("dirt: \(dirt)")
        print("boredom: \(boredom)")
        print("drowsiness: \(drowsiness)")
        if hunger >= 60 {
            print("\(name) is hungry")
        }
        if dirt >= 60 {
            print("\(name) is dirty")
        }
        if boredom >= 60 {
            print("\(name) is bored")
        }
        if drowsiness >= 60 {
            print("\(name) is tired")
        }
        
    }
    
}


var game = Tamagotchi()
game.name = "bunny"
game.play()
game.play()
game.check()
game.feed()
game.check()
game.play()
game.check()
game.clean()
game.check()
game.sleep()
game.check()
