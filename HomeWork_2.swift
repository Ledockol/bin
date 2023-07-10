import Swift

// Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад,
// следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.

func bank (a:Double , b:Double , c:Int) -> Double{
    (a * (b/100) * 365) / 365
}

// Создать перечисление, которое содержит 3 вида пиццы 
// и создать переменные с каждым видом пиццы.

enum pizza{
    case Italia
    case Pepperoni
    case Margarita
    var italPizza: pizza = .Italia
    var pepePizza: pizza = .Pepperoni
    var margPizza: pizza = .Margarita
}

// Добавить возможность получения названия пиццы через rawValue

enum pizza: String {
    case Italia = "Италия"
    case Pepperoni = "Пепперони"
    case Margarita = "Маргарита"


    func getName() -> String{
        switch self{
            case .Italia : return self.rawValue
            case .Pepperoni : return self.rawValue
            case .Margarita : return self.rawValue
        }
    }
}
