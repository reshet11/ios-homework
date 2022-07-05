import UIKit

//1) Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let numberOne = "14235"
let numberTwo = "222"
let numberThree = "3O2"
let numberFour = "53"
let numberFive = "52"

//первый способ

var sumResult = 0

if let sumOne = Int(numberOne) {
    sumResult += sumOne
} else {
    print("\(numberOne) - not a number")
}

if let sumTwo = Int(numberTwo) {
    sumResult += sumTwo
} else {
    print("\(numberTwo) - not a number")
}

if let sumThree = Int(numberThree) {
    sumResult += sumThree
} else {
    print("\(numberThree) - not a number")
}

if let sumFour = Int(numberFour) {
    sumResult += sumFour
} else {
    print("\(numberFour) - not a number")
}

if let sumFive = Int(numberFive) {
    sumResult += sumFive
} else {
    print("\(numberFive) - not a number")
}

print("\(sumResult)")

//второй способ

var result = 0

if Int(numberOne) != nil {
    result += Int(numberOne)!
} else {
    print("\(numberOne) - not a number")
}

if Int(numberTwo) != nil {
    result += Int(numberTwo)!
} else {
    print("\(numberTwo) - not a number")
}

if Int(numberThree) != nil {
    result += Int(numberThree)!
} else {
    print("\(numberThree) - not a number")
}

if Int(numberFour) != nil {
    result += Int(numberFour)!
} else {
    print("\(numberFour) - not a number")
}

if Int(numberFive) != nil {
    result += Int(numberFive)!
} else {
    print("\(numberFive) - not a number")
}

print("\(result)")

//2)Создать 3 константы со значением nil.

let textOne: Int! = nil
let textTwo: Bool! = nil
let textThree: Double! = nil

//3)Создать 5 опциональных типов констант и установите им значения.

let date: String? = "30.06.2022"
let length: Int? = 103
let connect: Bool? = true
let pi: Double? = 3.1415
let distance: Float = 104.32

//4)Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.

for name in "Andrey" {
    print("\(name)")
}

//5) Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

let arrayAge = [28, 41, 61, 67, 19, 11]

for i in 0..<arrayAge.count {
    print("\(arrayAge[i])")
}
