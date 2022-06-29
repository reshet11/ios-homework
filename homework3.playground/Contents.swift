import UIKit

//1) По создавайте свои строки

let name1 = "Alex"
let name2: String = "Oleg"
let name3 = "Sergey"
let name4 = "Tom"

//2) Создайте различные выражения с приведением типа

var sum: Int = 32
let money1 = 27.13
let money2 = -10
let money3 = 34.55
let sumDouble = Double(sum)
let money2Double = Double(money2)
let money1Int = Int(money1)
let money3Int = Int(money3)

let resSumDouble = sumDouble + money1 + money2Double + money3
let resSumInt = sum + money1Int + money2 + money3Int

//3) Так же поработайте с циклом for in как в уроке//

for c in "Hello world" {
    print(c)
}

//4) Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.

let name = "Andrey"
let surname = "Reshetnikov"
let age = 27
let placeOfResidence = "Moscow"
let hobby = "football"

//5) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.

print("My name is \(name) \(surname), I am \(age) years old. I live in \(placeOfResidence). I like \(hobby).")

//6) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).

let text1 = "Swift - это фантастический способ писать приложения для телефонов, "
let text2 = "для десктопных компьютеров, серверов, "
let text3 = "да и чего-либо еще,"
let text4 = "что запускает и работает при помощи кода."
let text5 = "Swift - безопасный,"
let text6 = "быстрый и"
let text7 = "интерактивный язык программирования."
let text8 = "Swift вобрал в себя лучшие идеи современных языков с мудростью инженерной культуры Apple."
let text9 = "Компилятор оптимизирован для производительности, а язык оптимизирован для разработки, "
let text10 = "без компромиссов с одной или другой стороны."

print("\n\t\(text1) \(text2) \n\(text3) \(text4) \n\t\(text5) \(text6) \(text7) \n\(text8) \n\(text9) \(text10)")

//7) Разбейте собственное имя на символы, перенося каждую букву на новую строку.

var myName = "Andrey"
for a in myName {
    print(a)
}

//8) Создайте переменную типа Int и переменную типа String. Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.

var varInt = 24
var varString = "Text"
var varIntToStr = String(varInt)
print(varString, varIntToStr)
