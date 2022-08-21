import UIKit

//1) Создайте по 1-2 enum разных типов.

enum Color: String {
    case white = "белый"
    case black = "черный"
}
let color = Color.black.rawValue

// это было первое решение, оставлю его для себя
//enum Step {
//    case up(x: Int, y: Int)
//    case down(x: Int, y: Int)
//    case left(x: Int, y: Int)
//    case right(x: Int, y: Int)
//}
//
//var step = Step.right(x: 1, y: 0)
//
//switch step {
//case .up(x: let x, y: let y):
//    print("up \(x):\(y)")
//case .down(x: let x, y: let y):
//    print("down \(x):\(y)")
//case .left(x: let x, y: let y):
//    print("left \(x):\(y)")
//case .right(x: let x, y: let y):
//    print("right \(x):\(y)")
//}

enum Step {
    case up
    case down
    case left
    case right
}

var x = 0, y = 0

var step = Step.right
step = Step.up

switch step {
case .up:
    y += 1
case .down:
    y -= 1
case .left:
    x -= 1
case .right:
    x += 1
}

print(x, y)

//2) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.

enum Name {
    case name(name: String)
    case surname(name: String, surname: String)
}

var name = Name.name(name: "David")
name = Name.surname(name: "Ivan", surname: "Ivanov")

switch name {
case .name(let name):
    print("name - \(name)")
case .surname(let name, let surname):
    print("name - \(name), surname - \(surname)")
}

enum Age: Int {
    case child = 5
    case teenager = 18
    case middle = 30
    case old = 50
}
var age = Age.middle

switch age {
case .child:
    print("child - \(age.rawValue) age")
case .teenager:
    print("teenager - \(age.rawValue) age")
case .middle:
    print("middle - \(age.rawValue) age")
case .old:
    print("old - \(age.rawValue) age")
}

enum Gender: String {
    case male
    case female
}

var gender = Gender.male

switch gender {
case .male:
    print("he is man")
case .female:
    print("she is woman")
}

enum Experience: Int {
    case junior = 1
    case middle = 5
    case senior = 8
}

var experience = Experience.junior

switch experience {
case .junior:
    print("experience \(experience.rawValue) years - junior")
case .middle:
    print("experience \(experience.rawValue) years - middle")
case .senior:
    print("experience \(experience.rawValue) years - senior")
}

//3) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
//Пример результата в консоли "apple green", "sun red" и т.д.

enum ColorRainbow: CaseIterable {
    case red
    case orange
    case yellow
    case green
    case cyan
    case blue
    case violet
}

//задание не совсем понял, сделал два варианта
// через enum

enum Subject: CaseIterable {
    case apple
    case sun
    case phone
    case car
    case book
}

for color in ColorRainbow.allCases {
    for subj in Subject.allCases {
        print(color, subj)
    }
}

//через функцию
func subject (_ subj: String, _ color: ColorRainbow) {
    switch color {
    case .blue:
        print(subj, color)
    case .red:
        print(subj, color)
    case .orange:
        print(subj, color)
    case .yellow:
        print(subj, color)
    case .green:
        print(subj, color)
    case .cyan:
        print(subj, color)
    case .violet:
        print(subj, color)
    }
}

subject("car", .blue)
subject("phone", .red)

//4) Создать функцию, которая выставляет оценки ученикам в школе.

enum Point: Int {
    case fail = 2
    case satisfactory = 3
    case good = 4
    case excellent = 5
}

func studentAssessment(_ student: String, _ point: Point) {
    switch point {
    case .fail:
        print("\(student): \(point), \(point.rawValue) points")
    case .satisfactory:
        print("\(student): \(point), \(point.rawValue) points")
    case .good:
        print("\(student): \(point), \(point.rawValue) points")
    case .excellent:
        print("\(student): \(point), \(point.rawValue) points")
    }
}

studentAssessment("Sidorov Sergey", .excellent)
studentAssessment("Ivanov Ivan", .satisfactory)

//5) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.

struct CarGarage {
    
    enum Brand {
        case audi, bmw
    }
    
    enum Model {
        case a4, a5, a6, m5, x6
    }
    
    enum Color {
        case black, white, blue, green, red
    }
    
    var brand: Brand
    var model: Model
    var color: Color
    var releaseDate: Int
    var horsePower: Int
    
}

let audiA5 = CarGarage(brand: .audi, model: .a5, color: .red, releaseDate: 2017, horsePower: 252)

//6) Напишите как понимаете enumerations:что это такое, в чем их смысл, зачем нужны. Ваше личное мнение: как и где их можно использовать?

//Перечисления - это общий тип для группы значений, но при этом сами значения могут быть любого типа.
//Можно использовать для группировки каких-либо взаимосвязанных значений. Например, выбор направления или цвет одежды, а так же группировать во вложенные перечисления.

//7) Написать по 5-10 enum разных типов + создать как можно больше своих enumerations.
//Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и распечатайте (см.видео).

enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let dayOfWeek = DayOfWeek.monday

switch dayOfWeek {
case .monday:
    print("Понедельник")
case .tuesday:
    print("Вторник")
case .wednesday:
    print("Среда")
case .thursday:
    print("Четверг")
case .friday:
    print("Пятница")
case .saturday:
    print("Суббота")
case .sunday:
    print("Воскресенье")
}

enum Country {
    case russia, america
}
enum Sity {
    case moscow, newYork
}
enum Street {
    case skladochnaya, tverskaya, pushkinskaya
}
enum ApartNum: Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
}

let country = Country.russia
let sity = Sity.moscow
let street = Street.skladochnaya
let apartNum = ApartNum.four.rawValue

print(country, sity, street, apartNum)

enum Person {
    case Human (String, Int)
    case Elf (String)
    case Dwarf
}

var hero = Person.Elf("Meneltor")
hero = Person.Human("Teodor", 54)

switch hero {
case .Human (let name, let power):
    print("You play as a human. Name: \(name), power: \(power)")
case .Elf (let name):
    print("You play as a elf. Name: \(name)")
case .Dwarf:
    print("You play as a dwarf")
}

enum Rate {
    enum Dollar: Double {
        case euro = 0.98
        case lire = 17.96
        case yuan = 6.76
        case rubles = 61.74
    }
}

var oneDollar = Rate.Dollar.rubles
oneDollar = Rate.Dollar.lire

switch oneDollar {
case .euro:
    print("in one dollar \(oneDollar.rawValue) euro")
case .lire:
    print("in one dollar \(oneDollar.rawValue) lire")
case .yuan:
    print("in one dollar \(oneDollar.rawValue) yuan")
case .rubles:
    print("in one dollar \(oneDollar.rawValue) rubles")
}

enum RussianRigion {
    case moscow (Int)
    case stPeterburg (Int)
    case belgorod (Int)
}

var russianRegion = RussianRigion.belgorod(31)

switch russianRegion {
case .moscow(let reg):
    print("Moscow region - \(reg)")
case .stPeterburg(let reg):
    print("stPeterburg region - \(reg)")
case .belgorod(let reg):
    print("Belgorod region - \(reg)")
}

enum Documents {
    case passport (String, String, String)
    case inn (String)
}

var documents = Documents.passport("45", "37", "321167")
documents = Documents.inn("385761539215")

switch documents {
case .passport(let seriesOne, let seriesTwo, let number):
    if seriesOne.count == 2 && seriesTwo.count == 2 && number.count == 6 {
        print("passport - \(seriesOne) \(seriesTwo) \(number)")
    } else {
        print("incorrect passport number")
    }
case .inn(let inn):
    if inn.count == 12 {
        print("inn - \(inn)")
    } else {
        print("incorrect inn")
    }
}

enum Economy {
    case xline
    case creta
    case duster
    case kapture
    case polo
    case octavia
    case rapid
    case solaris
    case qashqai
}

enum Comfort {
    case g70
    case coolray
    case audiA3
    case bmw320d
    case rav4
}

enum Premium {
    case bmw520i
    case audiA6
    case mbe200
    case mbc180
}

enum CarSharing {
    case economy (Economy)
    case comfort (Comfort)
    case premium (Premium)
}

var carSharing = CarSharing.comfort(.audiA3)

switch carSharing {
case .economy (let economy):
    print("\(economy) - economy class")
case .comfort (let comfort):
    print("\(comfort) - comfort class")
case .premium (let premium):
    print("\(premium) - premium class")
}

//8) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
//Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода.
//Дайте свою оценку первому и второму варианту написания.

enum ResumeField {
    case name
    case surname
    case age
    case profession
    case education
    case hobby
}

var resume = [ResumeField.name, ResumeField.surname]
//resume = .hobby
resume.forEach { resume in
    
    if resume == .name {
        print("\(resume) - Andrey")
    } else if resume == .surname {
        print("\(resume) - Reshetnikov")
    } else if resume == .age {
        print("\(resume) - 27")
    } else if resume == .profession {
        print("\(resume) - Consultant Sap")
    } else if resume == .education {
        print("\(resume) - higher education")
    } else {
        print("\(resume) - football")
    }
    
    switch resume {
    case .name:
        print("\(resume) - Andrey")
    case .surname:
        print("\(resume) - Reshetnikov")
    case .age:
        print("\(resume) - 27")
    case .profession:
        print("\(resume) - Consultant Sap")
    case .education:
        print("\(resume) - higher education")
    case .hobby:
        print("\(resume) - football")
    }
}

//Оба варианта решают задачу, но в данном примере лучше использовать switch case, так как условий для проверки много. If else необходимо использовать когда нужно проверить например одно или два выражения. Ну и в целом вариант с множеством проверок if else не очень читабельный.

//9) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
//Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
//Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
//Итог программы: «Айфон — розовый».

enum ColorDevice: String {
    case black = "Черный"
    case white = "Белый"
    case blue = "Синий"
    case green = "Зеленый"
    case red = "Красный"
    case pink = "Розовый"
    case brown = "Коричневый"
}

func colorDevices(_ color: ColorDevice) {
    
    enum Devices: String {
        case macBook = "Макбук"
        case iPhone = "Айфон"
        case iPad = "Айпад"
        case appleWatch = "ЭплВотч"
    }
    
    switch color {
    case .red:
        print("\(Devices.macBook.rawValue) - \(color.rawValue)")
    case .green:
        print("\(Devices.iPad.rawValue) - \(color.rawValue)")
    case .pink:
        print("\(Devices.iPhone.rawValue) - \(color.rawValue)")
    case .brown:
        print("\(Devices.appleWatch.rawValue) - \(color.rawValue)")
    default:
        print("no color to paint")
    }
}

colorDevices(.pink)
colorDevices(.blue)

