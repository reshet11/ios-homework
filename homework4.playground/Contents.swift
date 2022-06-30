import UIKit

//- создать массив "дни в месяцах" элементов содержащих количество дней в соответствующем месяце
 
let daysMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
 
//используя цикл for и этот массив выведите количество дней в каждом месяце (без имен месяцев)
 
for i in daysMonth {
    print(i)
}
 
//используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней

let nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for i in 0..<daysMonth.count {
    print("\(nameMonth[i]) - \(daysMonth[i]) days")
}
 
//сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
 
let daysInMounth = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for i in 0..<daysInMounth.count {
    print(daysInMounth[i])
}
 
//сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

for i in 0..<daysMonth.count {
    print("\(nameMonth[i]) - \(daysMonth[daysMonth.count - 1 - i])")
}
 
 //для произвольно выбранной даты (день и месяц) посчитайте количество дней до этой даты от начала года

let date = (31, 12)
var sumDays = 0
for i in 0..<date.1 - 1 {
    sumDays += daysMonth[i]
}
sumDays += date.0 - 1
print("\nUntil \(nameMonth[date.1 - 1]) \(date.0) \(sumDays) days")

 //1) Создайте массив учеников из 12 мальчиков

var array = ["Alex", "Andrey", "Artur", "Max", "Ivan", "Boris", "Marat", "Gleb", "Oleg", "Roman", "Tom", "Nikita"]

 //2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.

array.append("Ekaterina")
array.append("Kristina")
array += ["Veronika", "Maria", "Olga"]
array.insert("Rita", at: 1)
array.insert("Marina", at: 5)

print(array)

 //3) Удалите 9 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.

array[0...8].removeAll()

print(array)

 //4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

let arrayGrade1 = [0, 1, 2, 3, 4, 5]
let arrayGrade2 = [6, 7, 8, 9, 10]
let arrayGrade = arrayGrade1 + arrayGrade2

 //5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».

for i in 0..<array.count {
    if i <= 4 {
        print("\(array[i]) - \(arrayGrade[5]) points")
    }
    else {
        print("\(array[i]) - \(arrayGrade[3]) points")
    }
}

 //6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.

let oneDollar = 54.01
var sum = 0
let money = [1, 5, 10, 100, 100, 20, 50, 5, 50, 1, 1]

for i in 0..<money.count {
    sum += money[i]
}
sum = 0

for i in money {
    sum += i
}

let resSumRub = oneDollar * Double(sum)
print ("\n\(sum) dollars is \(resSumRub) rubles")
