import UIKit

//1) Написать программу, в которой создать класс "House" в нем несколько свойств - "width", "height" и несколько методов - "create"(выводит произведение свойств),"destroy"(отображает что дом уничтожен)и т.п.

class House {
    var widthPlot: Double
    var heightPlot: Double
    
    init (width: Double, height: Double) {
        self.widthPlot = width
        self.heightPlot = height
    }
    
    func create(width: Double, height: Double) {
        print("House created, area - \(height * width)m")
    }
    
    func destroy() {
        print("House destroyed")
    }
    
    func colorHouse(color: String) {
        print("The house is painted \(color)")
    }
}

var createHouse = House(width: 10, height: 10)
createHouse.create(width: 5, height: 5)
createHouse.destroy()
createHouse.colorHouse(color: "red")

//2) Создайте класс с методами, которые сортируют массив учеников.

class ArrayStudent {
    var arrayStudent = [String]()
    
    init (arrayStudent: [String]) {
        self.arrayStudent = arrayStudent
    }
    
    func sortAscending() {
        print(arrayStudent.sorted { $0 < $1 })
    }
    
    func sortDescending() {
        print(arrayStudent.sorted { $0 > $1 })
    }
}

let array = ["David", "Larry", "Tom", "Bob", "Alex"]

var arrayStudent = ArrayStudent(arrayStudent: array)
arrayStudent.sortAscending()
arrayStudent.sortDescending()

//3) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

struct Car {
    var name: String
    var price: UInt
    var millyage: UInt
    var color: String
}

var carOne = Car(name: "Audi TT", price: 2300000, millyage: 150000, color: "red")

var carTwo = carOne
carTwo.name = "BMW"
carTwo.price = 3000000
carTwo.millyage = 100000
carTwo.color = "black"

print(carOne)
print(carTwo)

//У структур по умолчанию присутсвует конструктор init(), а у классов необходимо его создавать.
//Изменить экземпляр carOne у структуры возможно только если сам экземпляр и свойства структуры являются переменной а не константой.
//У класса достаточно лишь чтобы свойства были var.
//Структуры создают копию и изменяют копию, не меняя той, с которой произошло копирование.
//Классы при копировании экземпляра создают указатель(ссылку) на этот класс, при изменении которого меняются оба экземпляра класса.
//Если логика программы не сложная, то лучше использовать структуры


//4) Дополнительно(на закрепление всех пройденных тем): Напишите простую программу, которая называет комбинации в покере.
// Записываем комбинации в массив.
// Если определённая комбинация - выводим соответствующую запись в print.
//Результат в консоли примерно такой: "У вас бубновый стрит флеш".
//Подсказки:
//- для мастей можно использовать перечисления(enum)
//- В зависимости от комбинации - в консоли печатаем тот или иной ответ.
//- Комбинации можно взять отсюда: http://www.russiapokernews.com/poker-hand-ranking

class Poker {
    
    let arrayCombination = ["High Card",
                            "Pair",
                            "Two Pairs",
                            "Three of a Kind",
                            "Straight",
                            "Flush",
                            "Full House",
                            "Four of a Kind",
                            "Royal Flush"]
    
    enum Suits: String {
        case spades = "spades"
        case diamonds = "diamonds"
        case hearts = "hearts"
        case clubs = "clubs"
    }
    
    func combination(_ suit: Suits, _ combination: String) {
        
        for (i, array) in arrayCombination.enumerated() {
            if array == combination {
                if i == 5 || i == 6 || i == 7 || i == 8 {
                    print("you have a \(suit.rawValue) \(array)")
                } else {
                    print("you have a \(array)")
                }
            }
        }
    }
}

var poker = Poker()
poker.combination(.diamonds, "Pair")
poker.combination(.clubs, "Full House")

//5) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются на эту букву.
//К примеру, А - Алексей, Александр, Артем, Антон и т. д. Внутри метода или полем класса (тут как удобно, не сильно критично) будет задаваться массив строк (string) в котором будут прописаны имена. Имена откуда-то подгружать не надо, их надо просто захардкодить. Метод должен возвращать отфильтрованный массив с именами.
//Так же написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя. Имя распечатаете на консоль то что у вас получилось отфильтровать.

class FilterName {
    var char: Character
    
    init (_ char: Character) {
        self.char = char
    }
    
    func arrayStringFilter() -> [String] {
        let arrayName = ["Bob", "Alex", "Anton",
                         "Ben", "Martin", "Marshall",
                         "Andrew", "Andy", "Arthur",
                         "Colin", "Coloman", "Curtis",
                         "David", "Marcus", "Mark",
                         "Simon", "Stephen", "Travis",
                         "Victor", "William", "Oleg"]
        
        let filterArray = arrayName.filter { $0.first == char }
        
        return filterArray.sorted()
        
    }
    
    func arrayString(_ arrayString: [String]) {
        for name in arrayString {
            print(name)
        }
    }
}

var nameChar = FilterName("A")
nameChar.arrayString(nameChar.arrayStringFilter())
