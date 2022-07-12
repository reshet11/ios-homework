import UIKit

//1) Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let numberOne = "14235"
let numberTwo = "222"
let numberThree = "32"
let numberFour = "53"
let numberFive = "52"

//первый способ

var sumResult = 0

if let numberOne = Int(numberOne),
   let numberTwo = Int(numberTwo),
   let numberThree = Int(numberThree),
   let numberFour = Int(numberFour),
   let numberFive = Int(numberFive) {
    
    sumResult = numberOne + numberTwo + numberThree + numberFour + numberFive
    print("\(sumResult)")
} else {
    print("Not a number")
}

let res = [numberOne, numberTwo, numberThree, numberFour, numberFive].map { Int($0) ?? 0 }.reduce(0, +)


//второй способ

var result = 0

if Int(numberOne) != nil,
   Int(numberTwo) != nil,
   Int(numberThree) != nil,
   Int(numberFour) != nil,
   Int(numberFive) != nil {
    
    result = Int(numberOne)! + Int(numberTwo)! + Int(numberThree)! + Int(numberFour)! + Int(numberFive)!
    print("\(result)")
} else {
    print("Not a number")
}

//2)Создать 3 константы со значением nil.

let textOne: Int? = nil
let textTwo: Bool? = nil
let textThree: Double? = nil

//3)Создать 5 опциональных типов констант и установите им значения.

let date: String? = "30.06.2022"
let length: Int? = 103
let connect: Bool? = true
let pi: Double? = 3.1415
let distance: Float? = 104.32

//4)Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.

for character in "Andrey" {
    print("\(character)")
}

//5) Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

let agesArray = [(28, "my age"),
                 (41, "sister's age"),
                 (61, "mother's age"),
                 (67, "dad's age"),
                 (19, "age of first nephew"),
                 (11, "age of second nephew")]

for (age, familyMember) in agesArray {
    print("\(age) - \(familyMember)")
}
