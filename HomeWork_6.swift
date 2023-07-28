import Swift

// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность.
// Должностей пока может быть две: или кассир, или повар.
// Добавить в класс пиццерии массив с работниками.




protocol MenuProtocol{
    var price : Double{get}
}

class Pizzeria: MenuProtocol{    
    private var menu: [MenuProtocol]
    var tables: [Table]
    var price : Double
    var workers: [Worker]
    init (menu:[MenuProtocol], price: Double, workers: [Worker],tables : [Table(seats: 5), Table(seats: 4),Table(seats: 2)]){
        self.menu = menu
        self.price = price
        self.workers = workers
        self.tables = tables
    }
struct Table{
    var seats: Int
}
struct Worker{
    var name: String
    var salary: Double
    var post: String
}    
enum Post {
    case cashier
    case cook
}
struct FrenchFries: MenuProtocol{
    var price: Double
    var size: String
}
struct Pizza: MenuProtocol{
    var price: Double
    var name: String
}
// Добавить в класс функцию которая добавляет новую позицию
    func add(_new : MenuProtocol){
    menu.append(_new)
    }
    func addWorker(worker : Worker){
    workers.append(worker)
    }

}


// Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, 
// которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе


class Table{
    var numberSeats: Int
    weak var tables: Pizzeria?
    init(numberSeats : Int){
        self.numberSeats = numberSeats

    }
    func guestsSeat(countGuests: Int) -> Bool{
        return countGuests <= numberSeats
    }
}

// Добавить в класс пиццерии свойство, в котором хранится массив столиков. 
// У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. 
// Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра
