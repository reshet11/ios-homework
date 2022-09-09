import UIKit

// Приведение типов

// 1. Библиотеку книг и видео библиотеку фильмов
// 2. Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
// 3. Сделать так чтоб когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению
// 4. И такой же метод придумать для книг

enum Genre {
    case horror, drama, comedy, adventure, fantasy
}

enum Mood {
    case bad, good, veryGood
}

class Library {
    var name: String
    var releaseDate: Int
    var genre: Genre
    var author: String
    
    init(name: String, releaseDate: Int, genre: Genre, author: String) {
        self.name = name
        self.releaseDate = releaseDate
        self.genre = genre
        self.author = author
    }
}

class BookLibrary {
    var books = [Library]()
    
    func addBook(name: String, releaseDate: Int, genre: Genre, author: String) {
        books.append(Library(name: name, releaseDate: releaseDate, genre: genre, author: author))
        self.books = books.sorted(by: { $0.name < $1.name })
    }
    
    func sortByMood(_ mood: Mood) {
        switch mood {
        case .bad:
            let book: [Library] = books.filter({ $0.genre == .comedy || $0.genre == .fantasy})
            for value in book {
                print("bad mood book: \(value.name) - \(value.genre)")
            }
        case .good:
            let book: [Library] = books.filter({ $0.genre == .adventure})
            for value in book {
                print("good mood book: \(value.name) - \(value.genre)")
            }
        case .veryGood:
            let book: [Library] = books.filter({ $0.genre == .horror || $0.genre == .drama})
            for value in book {
                print("very good mood book: \(value.name) - \(value.genre)")
            }
        }
    }
}

var booksLibrary = BookLibrary()
booksLibrary.addBook(name: "Harry Potter", releaseDate: 1997, genre: .fantasy, author: "Joanne Rowling")
booksLibrary.addBook(name: "Shining", releaseDate: 1977, genre: .horror, author: "Stephen King")
booksLibrary.addBook(name: "War and Peace", releaseDate: 1873, genre: .drama, author: "Lev Tolstoy")
booksLibrary.addBook(name: "Woe from wit", releaseDate: 1822, genre: .comedy, author: "Alexander Griboyedov")
booksLibrary.addBook(name: "Three Musketeers", releaseDate: 1844, genre: .adventure, author: "Alexander Duma")

booksLibrary.sortByMood(.veryGood)

class MovieLibrary {
    var movies = [Library]()
    
    func addMovie(name: String, releaseDate: Int, genre: Genre, author: String) {
        movies.append(Library(name: name, releaseDate: releaseDate, genre: genre, author: author))
        self.movies = movies.sorted(by: { $0.name < $1.name })
    }
    
    func sortByMood(_ mood: Mood) {
        switch mood {
        case .bad:
            let movie: [Library] = movies.filter({ $0.genre == .comedy || $0.genre == .fantasy})
            for value in movie {
                print("bad mood movie: \(value.name) - \(value.genre)")
            }
        case .good:
            let movie: [Library] = movies.filter({ $0.genre == .adventure})
            for value in movie {
                print("good mood movie: \(value.name) - \(value.genre)")
            }
        case .veryGood:
            let movie: [Library] = movies.filter({ $0.genre == .horror || $0.genre == .drama})
            for value in movie {
                print("very good mood movie: \(value.name) - \(value.genre)")
            }
        }
    }
}

var moviesLibrary = MovieLibrary()
moviesLibrary.addMovie(name: "The Mist", releaseDate: 2007, genre: .horror, author: "Frank Darabont")
moviesLibrary.addMovie(name: "Avatar", releaseDate: 2009, genre: .fantasy, author: "James Cameron")
moviesLibrary.addMovie(name: "Home alone", releaseDate: 1990, genre: .comedy, author: "Chris Columbus")
moviesLibrary.addMovie(name: "The revenant", releaseDate: 2015, genre: .adventure, author: "Mark Smith")
moviesLibrary.addMovie(name: "The Shawshank redemption", releaseDate: 1994, genre: .drama, author: "Frank Darabont")

moviesLibrary.sortByMood(.bad)
