import Swift

// Создать структуру картошки фри в которой будет стоимость и размер картошки 
// и сделать так чтобы в классе пицерия была одна переменна, в которую можно былобы класть и пиццу и картошку

protocol MenuProtocol{
    var price : Double{get}
}

class Pizzeria: MenuProtocol{    
    private var menu: [MenuProtocol]
    init (menu:[MenuProtocol]){
        self.menu = menu
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
    menu.append(new)
    }
}
// Протокол в котором содержатся функции открытия и закрытия
protocol WorkProtocol {
    func start()
    func finish()
}
// Написать расширение для класса пиццерии в котором будет реализован протокол

extension Pizzeria : WorkProtocol{
    func start(){

    }
    func finish(){

    }
}
// Написать функцию в которой происходит вычитание одного числа из другого. Функция должна работать 
// c Int и Double Функция должна возвращать результат вычитания


func minus<T: Numeric>(a: T, b: T) -> T {
    a - b
}
