import UIKit

//3) Создать 5 разных Tuples с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

let oneTuple = (23, "hello", true, 55.211)
let (color1, color2, color3, color4) = ("red", "green", "blue", 444)
let colorTuple = (color1, color2, color3, color4)
let nameTuple = (name1: "Polina", name2: "Andrey", name3: "Olga")
let monthTupleRu = (month1: "Январь", month2: "Февраль", month3: "Март", month4: "Апрель", month5: "Май", month6: "Июнь", month7: "Июль", month8: "Август", month9: "Сентябрь", month10: "Октябрь", month11: "Ноябрь", month12: "Декабрь")
let monthTupleEn = (month1: "January", month2: "February", month3: "March", month4: "April", month5: "May", month6: "June", month7: "July", month8: "August", month9: "September", month10: "October", month11: "November", month12: "December")

//4) Распечатайте Tuples 3 мя разными способами

print("\(oneTuple.0), \(oneTuple.1), \(oneTuple.2), \(oneTuple.3)")
print("\(color1), \(color2), \(color3), \(color4)")
print("\(nameTuple.name1), \(nameTuple.name2), \(nameTuple.name3)")

//5) Создайте пустой Tuples (Можно гуглить)

let tupleIsEmpty: (Int, String, Bool)? = nil

//1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.

let addressTuple = (country: "Russia", city: "Moscow", street: "Skladochnaya", housenum: 4, floor: 14, apartNum: 114, index: 127018)
let (country, city, street, housenum, floor, apartNum, index) = addressTuple

print("Address: country - \(addressTuple.0), city - \(addressTuple.1), street - \(addressTuple.2), housenum - \(addressTuple.3), floor - \(addressTuple.4), apartNum - \(addressTuple.5), index - \(addressTuple.6)")
print("Address: country - \(addressTuple.country), city - \(addressTuple.city), street - \(addressTuple.street), housenum - \(addressTuple.housenum), floor - \(addressTuple.floor), apartNum - \(addressTuple.apartNum), index - \(addressTuple.index)")
print("Address: country - \(country), city - \(city), street - \(street), housenum - \(housenum), floor - \(floor), apartNum - \(apartNum), index - \(index)")

/* 2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
 первый - превышение скорости: количество пойманных;
 второй - вождение нетрезвым: количество пойманных;
 третий - бесправники: количество пойманных.*/


let offendersTupleOne = (overSpeedOne: 21, drunkDriverOne: 7, noDrivingLicenseOne: 12)
let (overSpeedOne, drunkDriverOne, noDrivingLicenseOne) = offendersTupleOne

//Распечатайте наших бедокуров в консоль через print().

print("Превышают скорость - \(offendersTupleOne.overSpeedOne), Водят нетрезвыми - \(offendersTupleOne.drunkDriverOne), Бесправники - \(offendersTupleOne.noDrivingLicenseOne).")

//3) Выведите каждый параметр в консоль. Тремя способами.

print("Превышают скорость - \(offendersTupleOne.overSpeedOne)")
print("Водят нетрезвыми - \(offendersTupleOne.1)")
print("Бесправники - \(noDrivingLicenseOne)")

//4) Создайте второй кортеж — нашего напарника. Значения задайте другие.

let offendersTupleTwo = (overSpeedTwo: 18, drunkDriverTwo: 3, noDrivingLicenseTwo: 7)
let (overSpeedTwo, drunkDriverTwo, noDrivingLicenseTwo) = offendersTupleTwo

//5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.

let offendersTuple = (overSpeed: offendersTupleOne.overSpeedOne - offendersTupleTwo.overSpeedTwo, drunkDriver: offendersTupleOne.drunkDriverOne - offendersTupleTwo.drunkDriverTwo, noDrivingLicense: offendersTupleOne.noDrivingLicenseOne - offendersTupleTwo.noDrivingLicenseTwo)
let (overSpeed, drunkDriver, noDrivingLicense) = offendersTuple
//Вывести в консоль тремя способами.

print("\nРазница между первым и вторым: \nПревышают скорость - \(offendersTuple.overSpeed)")
print("Водят нетрезвыми - \(offendersTuple.1)")
print("Бесправники - \(noDrivingLicense)")
