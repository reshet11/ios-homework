import UIKit

/*
1) По-создавайте свои типы данных через typealias
2) Создайте различные выражения с приведением типа
3) Так же как в математеке поиграйтесь с выражениями - + /
*/
typealias NumberType = Int
typealias TextType = String
typealias DoubleType = Double
typealias DecType = Decimal

var a1: NumberType = 11
var b1: TextType = "Hello"
var c1: DoubleType = 44.12

a1 = 33
b1 = "Hello world!"
c1 = 21.12

let d1 = b1 + " " + TextType(a1)
let f1 = DecType(a1) + DecType(c1)
print(d1,f1)

//математические выражения
var x1 = 87.4
var x2 = 6
var x3 = Double(x2) + x1 / 2
var x4 = x2 + Int(x1) - Int(x3)
var y1: Double = 0.1
x3 += y1
x3 -= x1 + 6
x3 *= Double(x4)
