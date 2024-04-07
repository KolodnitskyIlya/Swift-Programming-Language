import Foundation

// Основы Swift / Клоужеры

/*
 
 { (параметры) -> тип результата in
 
    тело клоужера (выражения)
 
 }
 
 */


//let driving = {
//    print("I'm driving in my car")
//}

//driving()


func pay(user: String, amount: Int) {
    // code
}

let payment = {(user: String, amount: Int) in
    // code
}


// let payment = (user: String, amount: Int)


let driving2 = {(place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = {(place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")

print(message)


let payment2 = {(user: String) in
    print("Paying \(user)...")
}

let payment3 = {(user: String) -> Bool in
    print("Paying \(user)...")
    return true
}


// () -> Bool in

let payment4 = {() -> Bool in
    print("Paying...")
    return true
}


// func payment5() -> Bool

//let driving = {
//    print("I'm driving in my car")
//}

// () -> Void

//func travel(action: () -> Void) {
//    print("I'm getting ready to go")
//    action()
//    print("I arrived!")
//}

//travel(action: driving)

//travel {
//    print("I'm driving in my car")
//}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}

//animate(duration: 3, animations: {
//    print("Image")
//})

animate(duration: 3) {
    print("Image")
}

// --------------------------------------------------------------

// () -> Void

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}



let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
    
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}


func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//travel2 { place in
//    "I'm going to \(place) in my car"
//}


travel2 {
    "I'm going to \($0) in my car"
}


func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour"
}


func travel4() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel4()

result("London")
result("London")
result("London")


