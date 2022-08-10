import UIKit

//1) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую. Вывести всё в консоль.

let arrayNumbers = [4, 5, 7, 3, 11, 2, 1, 15, 6, 23, 14]

print(arrayNumbers.sorted { $0 > $1 })
print(arrayNumbers.sorted { $0 < $1 })

//2) Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.

var names = [String]()

func addName(_ name: String) {
    names.append(name)
}

addName("Andrey")
addName("Petr")
addName("Tomas")
addName("Tom")

let sortArray = names.sorted { $0.count < $1.count }
print(sortArray)

//3) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.

let dict = [100: "one hundred", 200: "two hundred", 300: "three hundred"]

func keysAndValues(_ key: Int) {
    if let value = dict[key] {
        print("key - \(key), value - \(value)")
    }
}

keysAndValues(100)

//4) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.

func emptyArrays(_ arrayNum: [Int], _ arrayStr: [String]) {
    var arrayNumbers = arrayNum
    var arrayString = arrayStr
    if arrayNumbers.isEmpty {
        arrayNumbers = [7, 8, 9]
        print(arrayNumbers)
    }
    if arrayString.isEmpty {
        arrayString = ["first text", "second text"]
        print(arrayString)
    }
}

var emptyArrayString = [String]()
var emptyArrayInt = [Int]()

emptyArrays(emptyArrayInt, emptyArrayString)
emptyArrays([1, 2, 3], emptyArrayString)
emptyArrays(emptyArrayInt, ["text"])
emptyArrays([4, 5, 6], ["name"])

//5) Написать 10 своих замыканий на примере сортировок массивов.
// Не понял до конца задание, сделал так...

let arrayNum = [4, 6, 1, 7, 9, 0, 3, 2, 5, 8]

let sortArrayNumAscending = arrayNum.sorted { $0 < $1 }
sortArrayNumAscending

let sortArrayNumDescending = arrayNum.sorted { $0 > $1 }
sortArrayNumDescending

let arrayStr = ["David", "Ivan", "Alex", "Sofia", "Max", "Robert"]

let sortArrayStrAscending = arrayStr.sorted { $0 < $1 }
sortArrayStrAscending

let sortArrayStrDescending = arrayStr.sorted { $0 > $1 }
sortArrayStrDescending

let sortArrayStrCharAsc = arrayStr.sorted { $0.count < $1.count }
sortArrayStrCharAsc

let sortArrayStrCharDes = arrayStr.sorted { $0.count > $1.count }
sortArrayStrCharDes

func arrayFilter(_ array: [Int], _ filtr: (Int) -> Bool) -> [Int] {
    
    var filter = [Int]()
    
    for i in array {
        if filtr(i) {
            filter.append(i)
        }
    }
    return filter
}

let oddNum = arrayFilter(arrayNum, { $0 % 2 == 1 })
oddNum

let numDivThree = arrayFilter(arrayNum, { $0 % 3 == 0 })
numDivThree

let numMoreFour = arrayFilter(arrayNum, { $0 > 4 })
numMoreFour

let array = [1, 2, 3, 11]
var count = 0

let filterByArray = arrayFilter(arrayNum) { value in
    
    for i in array {
        count += 1
        if i == value {
            return true
        }
    }
    return false
}
filterByArray

//6) Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.

func emptyArray(_ arrayStr: [String]) -> [String] {
    var arrayString = arrayStr
    
    if arrayString.isEmpty {
        arrayString.append("empty")
        return arrayString
    }
    return arrayStr
}

let notEmptyArray = emptyArray(["not empty"])
let wasEmptyArray = emptyArray(emptyArrayString)

//7) Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.

func checkText (_ text: String) -> Bool {
    let str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    var check = true
    for i in text {
        if str.contains(i) {
        //тут вопрос, как можно сделать по другому?
        } else {
            check = false
        }
    }
    return check
}

func site(_ name: String,
          _ surname: String,
          _ nickname: String,
          _ email: String,
          _ password: String) {
    
    if checkText(name) == true {
        print("name: \(name)")
    } else {
        print("incorrect name - \(name)")
    }
    
    if checkText(surname) == true {
        print("surname: \(surname)")
    } else {
        print("incorrect surname - \(surname)")
    }
    
    print("nickname: \(nickname)")
    
    if email.contains("@gmail.com") {
        print("email: \(email)")
    } else {
        print("incorrect email - \(email)")
    }
    
    if password.count > 7 {
        print("password: \(password)")
    } else {
        print("short password")
    }
}

site("Ivan", "Ivanov", "Vanka777", "vanka777@gmail.com", "qwerty234")

//8) Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.

func checkEmpty (_ array: [Int], _ dict: [Int: String]) {
    var arrayNum = array
    var dictNum = dict
    
    if arrayNum.isEmpty {
        arrayNum = [5, 4, 3, 2, 1, 0]
        print(arrayNum)
    } else {
        print(array)
    }
    
    if dictNum.isEmpty {
        dictNum = [100: "one hundred", 200: "two hundred", 300: "three hundred"]
        print(dictNum)
    } else {
        print(dict)
    }
}

let emptyArray = [Int]()
let emptyDict = [Int: String]()

checkEmpty(emptyArray, emptyDict)
checkEmpty([3, 2, 1, 0], [400: "four hundred"])
checkEmpty(emptyArray, [400: "four hundred"])
checkEmpty([3, 2, 1, 0], emptyDict)
