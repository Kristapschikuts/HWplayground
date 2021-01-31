import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multilpication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int{
    var result = numberOne
    switch calculationType {
        case CalculationType.addition: result += numberTwo
        case CalculationType.subtraction: result -= numberTwo
        case CalculationType.multilpication: result = result * numberTwo
        case CalculationType.division: result = result / numberTwo
    }
    print("Result:\(CalculationType.RawValue()) \(numberOne) and \(numberTwo) = \(result)")
      return result
}
calculateResult(firstNumber: 4, andSecondNumber: 5, withCalculationType: .addition)
    
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

var numberOne = 20
var numberTwo = 10

calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .subtraction)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multilpication)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)

/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */

struct car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs(){
            print("\(name), \(productionYear), \(horsePower)")
    }
}

let bmw = car(name: "m4", productionYear: 2019, horsePower: 425)

bmw.getSpecs()

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = car(name: "audiQ7", productionYear: 2013, horsePower: 300)

var audiTT = audiQ7
audiTT.name = "AudiTT"

audiQ7.getSpecs()
audiTT.getSpecs()

