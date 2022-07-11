import UIKit

//1) Создать 3 функции:
// первая функция принимает массив Int и сортирует его по порядку (возрастание). После
//этого распечатывает результат в консоль;

func firstFunc(array: [Int]) {
    print(array.sorted())
}

let numArray = [5, 13, 34, 8, 2, 7, 44, 56, 71]

firstFunc(array: numArray)
firstFunc(array: [3, 17, 1, 4, 7, 33, 128])

// вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
//алфавиту. После этого распечатывает результат в консоль;

func secondFunc(array: [String]) {
    var arrayInsert = array
    
    switch arrayInsert.count {
    case 1:
        arrayInsert[0] = "Tom"
    case 2:
        arrayInsert[0] = "Tom"
        arrayInsert[1] = "Alex"
    case 3...:
        arrayInsert[0] = "Tom"
        arrayInsert[1] = "Alex"
        arrayInsert[2] = "Oleg"
    default:
        break
    }

    let arraySort = arrayInsert.sorted()
    
    for text in arraySort {
        print("\(text)")
    }
}

func secondFunc1(array: [String]) {
    if array.count < 3 {
        print("skdg")
    } else {
        var arrayInsert = array
        
        arrayInsert[0] = "Tom"
        arrayInsert[1] = "Alex"
        arrayInsert[2] = "Oleg"
        
        print(arrayInsert.sorted())
    }
}


let textArray = ["Andrey", "Kirill", "Max", "Bob"]

//secondFunc(array: textArray)
secondFunc1(array: ["Grisha", "Olga"])

// третья функция принимает 2 массива String и складывает их. После этого
//распечатывает результат в консоль.

func thirdFunc(arrayOne: [String], arrayTwo: [String]) {
    let arrayResult = arrayOne + arrayTwo
    print(arrayResult)
}
let oneArr = ["Moscow", "Berlin"]
let twoArr = ["Russia", "Germany"]

thirdFunc(arrayOne: oneArr, arrayTwo: twoArr)

//2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.

var teacherJournal = [String]()

func addStudent(name: String, profession: String, grade: String) {
    teacherJournal.append(name)
    teacherJournal.append(profession)
    teacherJournal.append(grade)
}

addStudent(name: "Andrey", profession: "builder", grade: "4")
addStudent(name: "Alex", profession: "engineer", grade: "6")
addStudent(name: "Oleg", profession: "policeman", grade: "3")
addStudent(name: "Egor", profession: "driver", grade: "5")
addStudent(name: "Vlad", profession: "actor", grade: "9")
addStudent(name: "Roman", profession: "seller", grade: "10")
addStudent(name: "Max", profession: "fireman", grade: "11")
addStudent(name: "Konstantin", profession: "postman", grade: "2")
addStudent(name: "Anton", profession: "doctor", grade: "4")
addStudent(name: "Nikita", profession: "artist", grade: "7")

for i in 0..<teacherJournal.count {
    if i % 3 == 0 {
        print("\nname - \(teacherJournal[i])")
    } else if i % 2 == 0{
        print("profession - \(teacherJournal[i])")
    } else {
        print("grade - \(teacherJournal[i])")
    }
}


//3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.

func addName(name: String, surname: String) {
    print([name, surname] + [surname, surname])
}

addName(name: "Andrey", surname: "Reshetnikov")

//4) Создайте функцию которая принимает параметры и вычисляет площадь круга.

func areaOfCircle(radius r: Double) {
    let s = r * r * 3.14
    print("Area of a circle = \(s)")
}

func areaOfCircle(diameter d: Double) {
    let s = (d * d) / 4 * 3.14
    print("Area of a circle = \(s)")
}

areaOfCircle(radius: 4)
areaOfCircle(diameter: 8)

//5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.

let studentDict = ["name1": ("Dmitry", "Sergey", "German", "Mihail", "Symon"),
                   "score": ("3", "4", "4", "5", "3")]

print(studentDict["name"] ?? "не существует ключа name")

//if let nameTuple = studentDict["name"] {
//    print(nameTuple)
//} else {
//    print("nil")
//}

//6) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.

func calculateArray(arrayOne: [String], arrayTwo: [String], arrayThree: [String]) -> Int {
    
    let arrayResult = arrayOne + arrayTwo + arrayThree
    var sum = 0
    
    for i in arrayResult {
        if Int(i) != nil {
            let sumInt = Int(i)!
            sum += sumInt
        } else {
            print("\(i) - nil")
        }
    }
    print("Sum of all arrays = \(sum)")
    return sum
}

let walletOne = ["100", "13l", "35"]
let walletTwo = ["50", "10", "43", "4", "78", "2", "5"]
let walletThree = ["50", "1", "20", "10", "100"]

//calculateArray(arrayOne: walletOne, arrayTwo: walletTwo, arrayThree: walletThree)
//let sum = calculateArray(arrayOne: walletOne, arrayTwo: walletTwo, arrayThree: walletThree)

func calculateArray1(arrayOne: [String], arrayTwo: [String], arrayThree: [String]) -> Int {
    let sumStringArray = arrayOne + arrayTwo + arrayThree
    var sum = 0
    
    for i in sumStringArray {
        if let number = Int(i) {
            sum += number
        } else {
            print(i, "is not a number")
        }
    }
    print("Sum of all arrays = \(sum)")
    return sum
}
calculateArray1(arrayOne: walletOne, arrayTwo: walletTwo, arrayThree: walletThree)
