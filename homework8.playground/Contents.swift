import UIKit

//1) Создать цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов:)

mainLoop: for i in 1...200 {
    for j in 1...200 {
        if j == 15 {
            break mainLoop
        }
        print("loopOne:\(i), loopTwo:\(j)")
    }
}

//2)Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд

var age = 28

if age >= 0 && age <= 2 {
    print("sitAtHome")
} else if age >= 3 && age <= 5 {
    print("kindergarten")
} else if age >= 6 && age <= 17 {
    print("school")
} else if age >= 18 && age <= 24 {
    print("university")
} else if age >= 25 && age <= 64 {
    print("job")
} else if age >= 65 && age <= 116 {
    print("pension")
} else {
    print("it's not age")
}

switch age {
case 0...2:
    print("\(age) age - sitAtHome")
case 3...5:
    print("\(age) age - kindergarten")
case 6...17:
    print("\(age) age - school")
case 18...24:
    print("\(age) age - university")
case 25...64:
    print("\(age) age - job")
case 65...116:
    print("\(age) age - pension")
default:
    print("\(age) - it's not age")
    break
}

//3)Создать все циклы for in которые вы знаете ,максимально больше приветствуется

let numArray = [7, 13, 32, 1, 3, 87, 12]

for num in numArray.reversed() {
    print("\(num)")
}

var resultNumArray = 0

for num in numArray {
    resultNumArray += num
}

for (index, value) in numArray.enumerated() {
  print("number \(index + 1) = \(value)")
}

for charText in "Hello!".reversed() {
    print("\(charText)")
}

var nameDict = ["name1": "Alex", "name2": "Tony", "name3": "Bob"]

for (_, value) in nameDict {
    print("name - \(value)")
}

for (key, _) in nameDict {
    print("keys - \(key)")
}

for (key, value) in nameDict {
    print("\(key) - \(value)")
}

var res = 0
for i in 1...15 where i % 2 == 0 {
    res += i
}

let arrayAlphabet = ["a", "b", "c", "d", "e", "f"]
let arrayCount = arrayAlphabet.count - 1
for i in 0..<arrayAlphabet.count {
    print("\(arrayAlphabet[arrayCount - i])")
}

//4)в switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение

var valuePoints = 2

switch valuePoints {
case 1...3:
    print("\(valuePoints) points - bad")
case 4...6:
    print("\(valuePoints) points - no bad")
case 7...9:
    print("\(valuePoints) points - good")
case 10...12:
    print("\(valuePoints) points - very good")
default:
    print("\(valuePoints) points - not points")
}

if valuePoints >= 1 && valuePoints <= 3 {
    print("\(valuePoints) points - bad")
} else if valuePoints >= 4 && valuePoints <= 6 {
    print("\(valuePoints) points - no bad")
} else if valuePoints >= 7 && valuePoints <= 9 {
    print("\(valuePoints) points - good")
} else if valuePoints >= 10 && valuePoints <= 12 {
    print("\(valuePoints) points - very good")
} else {
    print("\(valuePoints) points - not points")
}

//5) Создайте массив(без тюплов) с именами всех членов вашей семьи включая родственников что б количество имен не менее 10 было и отсортируйте, распечатайте по алфавиту их в консоль

let arrayName = ["Viktor", "Galina", "Andrey", "Elena", "Vadim", "Ilya", "Anastasia", "Tatiana", "Kristina", "Yuri"]
var sortedNamesArrayOne = [String]()
for a in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
    for i in arrayName {
        for j in i {
            if a == j {
                sortedNamesArrayOne.append(i)
            }
            break
        }
    }
}
print("\(sortedNamesArrayOne)")

let sortedNamesArray = arrayName.sorted()
for nameSort in sortedNamesArray {
    print("\(nameSort)")
}
