import UIKit

// 1.Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".

class People {
    
    var name: String
    var height: Int
    var weight: Int
    var gender: String
    
    init(name: String, height: Int, weight: Int, gender: String) {
        self.name = name
        self.height = height
        self.weight = weight
        self.gender = gender
    }
    
    func say() -> String {
        return "Hello!"
    }
}

// 2.Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.

class Cook: People {
    override func say() -> String {
        return super.say() + " I like to cook"
    }
}

class Manager: People {
    override func say() -> String {
        return super.say() + " I like to talk"
    }
}

class Fighter: People {
    override func say() -> String {
        return super.say() + " I like to fight"
    }
}

// 3.Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.

let people = People(name: "Bob", height: 182, weight: 76, gender: "male")
let cook = Cook(name: "Sofia", height: 161, weight: 55, gender: "female")
let manager = Manager(name: "Peter", height: 170, weight: 82, gender: "male")
let fighter = Fighter(name: "Jack", height: 185, weight: 70, gender: "male")

var arrayPeople = [people, cook, manager, fighter]

// 4.В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".

for value in arrayPeople {
    print("name - \(value.name), height - \(value.height), weight - \(value.weight), gender - \(value.gender). Say: \(value.say())")
}

// 5.Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.

class Driver: People {
    
    var lastName = "Petrov"
    var age = 32
    
    override func say() -> String {
        return super.say() + " I like to drive"
    }
}

let driver = Driver(name: "Ivan", height: 190, weight: 77, gender: "male")
arrayPeople.append(driver)

for value in arrayPeople {
    print("name - \(value.name), height - \(value.height), weight - \(value.weight), gender - \(value.gender). Say: \(value.say())")
    if value === driver {
        print("age driver - \(driver.age), last name driver - \(driver.lastName)")
    }
}

// 6.Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.

// добавил это условие в каждый класс:
// override func say() -> String {
//     return super.say() + " I like to ..."
// }

// 7.Вывести все это в обратном порядке(Google в помощь).

for value in arrayPeople.reversed() {
    print(value.say())
}

// 8.Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

class Martian {
    
    var name = "Jxk3000"
    var age = 341.67
    
    func say() -> String {
        return "Aloha"
    }
}

// 9.Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".

class Carrionites: Martian {
    
    override func say() -> String {
        return "Salam"
    }
}

class Mentors: Martian {
    
    override func say() -> String {
        return "Molecum salam"
    }
}

let martian = Martian()
let carrionites = Carrionites()
carrionites.name = "Bek"
carrionites.age = 77
let mentors = Mentors()
mentors.name = "K900"
mentors.age = 300

let arrayMartian = [martian, carrionites, mentors]

// 10.Объединить всех people и Марсианинов) в один массив.

var allArray: [AnyObject] = [people, cook, manager, fighter, driver, martian, carrionites, mentors]

// 11.В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод

for array in allArray {
    if array is People {
        let arrayPeopl = array as! People
        print("\(type(of: people)) - \(arrayPeopl.name). Say - \(arrayPeopl.say())")
    }
    if array is Martian {
        let arrayMart = array as! Martian
        print("\(type(of: martian)) - \(arrayMart.name). Say - \(arrayMart.say())")
    }
}
