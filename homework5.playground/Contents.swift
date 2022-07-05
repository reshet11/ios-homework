import UIKit

//Создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

let dictColor = [10: "Write", 21: "Blue", 22: "Red", 23: "Green", 30: "Black"]

let dictColorEnRu = ["Write": "Белый", "Blue": "Синий", "Red": "Красный", "Green": "Зеленый", "Black": "Черный"]

let trafficColors = ["Red": false, "Yellow": false, "Green": true]

let numApartPerFloor = [1: 1, 2: 1, 3: 1, 4: 1, 5: 2, 6: 2, 7: 2, 8: 3, 9: 3, 10: 4]

let metersData = ["T1": 34.214, "T2": 24.098, "T3": 41.981]

let tempTime = [12: 26.3, 15: 27.1, 18: 25.5, 21: 24.0, 00: 18.7]

let connectControl = [0: false, 1: true]

let daysWeek = ["Понедельник": 1, "Вторник": 2, "Среда": 3, "Четверг": 4, "Пятница": 5, "Субота": 6, "Воскресенье": 7]

let dictMouthRu = [1: "Январь",
                   2: "Февраль",
                   3: "Март",
                   4: "Апрель",
                   5: "Май",
                   6: "Июнь",
                   7: "Июль",
                   8: "Август",
                   9: "Сентябрь",
                   10: "Октябрь",
                   11: "Ноябрь",
                   12: "Декабрь"]

let dictMouthEn = [1: "January",
                   2: "February",
                   3: "March",
                   4: "April",
                   5: "May",
                   6: "June",
                   7: "July",
                   8: "August",
                   9: "September",
                   10: "October",
                   11: "November",
                   12: "December"]

//Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

for (key, value) in dictColor {
    print("\(key) - \(value)")
}
print("\(dictColor.keys) - \(dictColor.values)")

for (key, value) in dictColorEnRu {
    print("\(key) - \(value)")
}
print("\(dictColorEnRu.keys) - \(dictColorEnRu.values)")

for (key, value) in trafficColors {
    print("\(key) - \(value)")
}
for (key, value) in numApartPerFloor {
    print("\(key) - \(value)")
}
for (key, value) in metersData {
    print("\(key) - \(value)")
}
for (key, value) in tempTime {
    print("\(key) - \(value)")
}
for (key, value) in connectControl {
    print("\(key) - \(value)")
}
for (key, value) in daysWeek {
    print("\(key) - \(value)")
}
for (key, value) in dictMouthRu {
    print("\(key) - \(value)")
}
for (key, value) in dictMouthEn {
    print("\(key) - \(value)")
}

//Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пару значений􏰀

var emptyDict = [Int: String]()
if emptyDict.isEmpty {
    emptyDict = [0: "Zero", 1: "One"]
    emptyDict[2] = "Two"
    emptyDict.updateValue("Three", forKey: 3)
}

//Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

var dictCar = ["notRusCar": "audi"]

//Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения.

dictCar["rusCar"] = "niva"

for (key, value) in dictCar {
    print("\(key) - \(value)")
}
print("keys - \(dictCar.keys), value - \(dictCar.values)")

for value in dictCar.values {
    print("\(value)")
}
print("value - \(dictCar.values)")

//Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

dictCar["notRusCar"] = nil
dictCar.removeValue(forKey: "notRusCar")

//Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

let dictGreetings = ["Иванов": "Здравствуйте", "Петров": "Добрый день", "Сидоров": "Приветствую"]

//В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.

for key in dictGreetings.keys {
    print("\(key)")
}

//Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.

for value in dictGreetings.values {
    print("\(value)")
}
