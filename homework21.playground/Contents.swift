import UIKit

// 1. Создать любой generic для классов, структур, методов, перечислений(по 1 на каждый).
// сложно у меня с придумыванием примеров)

class Car<T> {
    var brand: String
    var releaseData: T
    
    init(brand: String, releaseDate: T) {
        self.brand = brand
        self.releaseData = releaseDate
    }
    
    func infoCar() {
        print("brand: \(brand), release date: \(releaseData)")
    }
}

let carOne = Car(brand: "audi", releaseDate: 2007)
let carTwo = Car(brand: "bmw", releaseDate: "two thousand fourteen")
carOne.infoCar()
carTwo.infoCar()

struct DateOfBirth<T> {
    var day: T
    var month: T
    var year: T
}

let dateOfBirthOne = DateOfBirth(day: 11, month: 09, year: 94)
let dateOfBirthTwo = DateOfBirth(day: "11", month: "09", year: "1994")

func checkValue<T>(_ value: T) {
    if value as? Int == 1 || value as? String == "1" || value as? Bool == true {
        print("on")
    } else if value as? Int == 0 || value as? String == "0" || value as? Bool == false {
        print("off")
    } else {
        print("error")
    }
}

checkValue(0)
checkValue("1")
checkValue(true)
checkValue("yes")

func printElementArray<T>(array: [T]) {
    for element in array {
        print(element)
    }
}

printElementArray(array: [1, 3, 6, 7])
printElementArray(array: ["Audi", "BMW", "Mersedes"])

enum DayWeek<T> {
    case monday(T)
    case tuesday(T)
    case wednesday(T)
    case thursday(T)
    case friday(T)
    case saturday(T)
    case sunday(T)
}

let mondayInt = DayWeek.monday(1)
let mondayString = DayWeek.monday("one")

// 2. Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)

struct GenericArray<T> {
    var array = [T]()
    
    mutating func addElemToArray(_ object: T) {
        array.append(object)
    }
}

var genericArrayInt = GenericArray(array: [1, 3, 5, 7, 9])
genericArrayInt.addElemToArray(11)

var genericArrayString = GenericArray(array: ["Alex", "Bob", "Goga"])
genericArrayString.addElemToArray("Tom")

// 3. Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)

class Player<T> {
    var nickName: T
    
    init(nickName: T) {
        self.nickName = nickName
    }
    
    func startGame() {
        print("Welcome \(nickName)!")
    }
    
    func endGame() {
        print("Bye \(nickName)")
    }
}

extension Player {
    subscript(level: Int) -> Int {
        switch level {
        case 1: print("easy level")
        case 2: print("normal level")
        case 3: print("hard level")
        default: print("Enter a number from 1 to 3")
        }
        if level > 3 || level < 1 {
            return 1
        } else {
            return level
        }
    }
}

let playerOne = Player(nickName: "Fedor777")
playerOne.startGame()
playerOne[2]
playerOne.endGame()

let playerTwo = Player(nickName: 515)
playerTwo.startGame()
playerTwo[4]
playerTwo.endGame()

