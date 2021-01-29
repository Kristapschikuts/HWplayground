import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

//struct Dictionary<Key, Value> where Key : Hashable
var Team1 = "Brooklyn Nets"
var Team2 = "Dallas Mavericks"
var Team3 = "Washington Wizards"
let resultsOfGames1 = ["99:":89, "109:":99]
let resultsOfGames2 = ["87:":93, "104:":97]
let resultsOfGames3 = ["117:":112, "107:":122]

for (keys, value) in resultsOfGames1 {
    print("Boys against \(Team1) scored:\(keys)\(value)")
}
for (key,value) in resultsOfGames2 {
    print("Boys against \(Team2) scored:\(key)\(value)")
}
for (key,value) in resultsOfGames3 {
    print("Boys against \(Team3) scored:\(key)\(value)")
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

func calculateCash(){
    let arrayOfInt = [5, 20, 50, 100, 500]
    let total = arrayOfInt.reduce(0, +)
       print(total)
}
calculateCash()

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber (number: Int) -> Bool{
    if number % 2 == 0 {
        return true
    } else{
        return false
    }
}
isEvenNumber(number: 420)


/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int] {
    let newNumbers = Array(from...to)
    return newNumbers
}
var array = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

