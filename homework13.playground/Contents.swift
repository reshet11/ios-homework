import UIKit

// 1) Создать класс "IOSStudents", добавить ему property: dateOfBirth, skills. Для тренировки.

struct DateOfBirth {
    var day: Int
    var month: Month
    var year: Int
}
enum Month {
    case January, February, March, April, May, June, July, August, September, October, November, December
}

class IOSStudents {
    
    var dateOfBirth: DateOfBirth
    var skills: String
    
    init(dateOfBirth: DateOfBirth, skills: String) {
        self.dateOfBirth = dateOfBirth
        self.skills = skills
    }
}

var student = IOSStudents(dateOfBirth: DateOfBirth(day: 11, month: .September, year: 1994), skills: "junior developer")
student.dateOfBirth.month

// 2) Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.

//сохраняемые и не сохраняемые свойства

struct Person {
    
    var firstName: String {
        didSet {
            if firstName.count < 15 {
                firstName = firstName.capitalized
            } else {
                firstName = oldValue
                print("Введите имя меньше чем 15 символов")
            }
        }
    }
    
    let lastName: String
}

//вычисляемые свойства и свойства типа

struct Conversion {
    
    static let coef = 2.54
    var centimeters: Double
    var inches: Double {
        get {
            return centimeters / Conversion.coef
        }
        set {
            centimeters = newValue * Conversion.coef
        }
    }
}

// 3) Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
// Создать 2 вычисляемых свойства - те же угол А,угол С.
// Если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
// Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.

// Если треугольник прямоугольный, то один угол у него уже известен.
// Поэтому искать третий угол можно исходя из одного угла с вычисляемым свойством.

struct CreateRightTriangle {
    
    var angleA: Double {
        didSet {
            if angleA > 90 {
                angleA = oldValue
                print("Введите значение меньше 90")
            }
        }
    }
    var angleC: Double {
        get {
            return 90 - angleA
        }
        set {
            if newValue < 90 {
                angleA = 90 - newValue
                print("angleA = \(angleA), angleB = 90, angleC = \(newValue) ")
            } else {
                print("Введите значение меньше 90")
            }
        }
    }
}

var rightTriangle = CreateRightTriangle(angleA: 45)
rightTriangle.angleA = 35
rightTriangle.angleC = 55

// А если треугольник не прямоугольный, то необходимо знать изначально как минимум 2 угла, чтобы найти третий.
// Два вычисляемый свойства тут тоже не подойдут, так как будет ошибка. Возможно есть другое решение, но я сделал так:

struct CreateTriangle {
    var angleA: Double
    var angleB: Double
    var angleC: Double {
        get {
            return 180 - angleA - angleB
        }
        set {
            //тут изменить можно только либо angleA, либо angleB
            angleA = 180 - newValue - angleB
        }
    }
}

var triangle = CreateTriangle(angleA: 30, angleB: 45)
triangle.angleA = 60
triangle.angleC = 37

// 4) Создать структуру "Резюме", у которой есть такие свойства:
// Фамилия
// Имя
// Должность
// Опыт
// Контактные данные(телефон, емейл)
// О себе(можно записать какие-то пару предложений на выбор).

struct Resume {
    
    var firstName: String {
        didSet {
            firstName = firstName.capitalized
            if firstName.count < 2 || firstName.count > 15 {
                firstName = oldValue
                print("first name - incorrectly")
            }
        }
    }
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
            if lastName.count < 2 || lastName.count > 20 {
                lastName = oldValue
                print("last name - incorrectly")
            }
        }
    }
    var position: String
    var expirience: Int {
        didSet {
            if expirience > 100 {
                expirience = oldValue
                print("expirience - incorrectly")
            }
        }
    }
    var phoneNumber: String {
        didSet {
            if phoneNumber.count == 10 {
                phoneNumber = "8" + phoneNumber
            }
            
            if phoneNumber.count < 10 || phoneNumber.count > 11 {
                phoneNumber = oldValue
                print("phone number - incorrectly")
            } else {
                if phoneNumber.first != "8" {
                    phoneNumber = oldValue
                    print("first character - 8")
                }
                for i in phoneNumber {
                    if i != "8" {
                        phoneNumber = oldValue
                        print("first character - 8")
                    }
                    break
                }
            }
        }
    }
    var eMail: String {
        didSet {
            eMail = eMail.validateByMask(.email) ? eMail : oldValue
        }
    }
    var aboutYou: String {
        didSet {
            if aboutYou.count < 10 {
                aboutYou = oldValue
                print("short about you")
            }
        }
    }
    
}

enum RegExValues: String {
    case email = #"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"#
}

extension String {
    func validateByMask(_ mask: RegExValues) -> Bool {
        if self.range(of: mask.rawValue, options: .regularExpression) == nil {
            return false
        }
        return true
    }
}

var resume = Resume(firstName: "first name",
                    lastName: "last name",
                    position: "position",
                    expirience: 0,
                    phoneNumber: "80000000000",
                    eMail: "*****@gmail.com",
                    aboutYou: "about you!")

resume.firstName = "Robert"
resume.lastName = "Fedorov"
resume.position = "ios developer"
resume.expirience = 2
resume.phoneNumber = "88005553555"
resume.eMail = "fedorov1*2@gmail.com"
resume.aboutYou = "I do programming. Football is my hobby"
resume.eMail

// 5) Задание на закрепление предыдущих тем:
// Создать журнал, чтоб можно было писать имя, фамилию и оценку
// Поставить ограничения: имя и фамилия не выше 15 символов каждое и оценка не выше 5
// Если везде значения превышают выдавать об этом Сообщения в консоль

struct Journal {
    
    static let maxCountName = 15
    var firstName: String {
        didSet {
            if firstName.count > Journal.maxCountName {
                print("First name '\(firstName)' incorrectly. Maximum number of character - 15")
                firstName = oldValue
            }
        }
    }
    var lastName: String {
        didSet {
            if lastName.count > Journal.maxCountName {
                print("Last name '\(lastName)' incorrectly. Maximum number of character - 15")
                lastName = oldValue
            }
        }
    }
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    var score: Int {
        didSet {
            if score < 1 || score > 5 {
                print("score \(score) incorrect. Rating from 1 to 5")
                score = oldValue
            }
        }
    }
}

var journal = Journal(firstName: "Egor", lastName: "Dmitrov", score: 2)
journal.fullName = "Andrey Orlov"
journal.score = 6

// 6) Написать класс, в котором есть 4 функции:
// пустая, которая просто выводит сообщение через print
// которая принимает параметры и выводит их в консоль
// которая принимает и возвращает параметры
// которая принимает замыкание и распечатывает результаты в консоль

class TypeFunctions {
    
    func welcome() {
        print("Welcome!")
    }
    
    func name(_ name: String) {
        print("Welcome \(name)")
    }
    
    func calculateSum(_ numOne: Int, _ numTwo: Int) -> Int {
        return numOne + numTwo
    }
    
    func closureFunc(_ array: [Int], _ filtr: (Int) -> Bool ) {
        let filterArray = array.filter(filtr).sorted()
        print(filterArray)
    }
}

var function = TypeFunctions()
function.welcome()
function.name("Andrey")
function.calculateSum(3, 5)

let arrayNum = [4, 7, 13, 66, 3, 16, 27, 9, 1, 8, 21]
function.closureFunc(arrayNum, { $0 % 3 == 0 } )
