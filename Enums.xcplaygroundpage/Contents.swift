import Foundation

// Enum is the same as Struct except we know all cases at runtime


struct CarModel {
    let brand: CardBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CardBrandOption {
    case ford, toyota, honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
//        default:
//            return "Default"
        }
    }
}

//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")


//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "Toyota")
//
//var car1 = CarModel(brand: brand1, model: "Fiesta")
//var car2 = CarModel(brand: brand1, model: "Focus")
//var car3 = CarModel(brand: brand2, model: "Camry")

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")

var fordBrand: CardBrandOption = .ford

print(fordBrand.title)


// ----------------------------------------------------------------


let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

var result4 = Result.failure

result4 = .success


let result5: Result

result5 = .success



enum Activity {
    case dancing
    case running(dectination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let currentActivity = Activity.dancing

switch currentActivity {
    
case .dancing: print("Dance")
case .running: print("Run")
case .singing: print("Song")
case .talking: print("Talk")
    
}

let talking = Activity.talking(topic: "Football")


enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)


enum Phone: String {
    case Apple = "iPhone 15"
    case Samsung = "Galaxy S20"
    case Google = "Pixel 2"
}

var myPhone = Phone.Apple

print(myPhone)
print(myPhone.rawValue)

