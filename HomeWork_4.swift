import Swift
// Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
// Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки 
// (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом 
// для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

struct Pizza {
    var price: Double
    var type: PizzaType
    var crustType: String
        var toppings: Topping
     
enum PizzaType{
    case Italia
    case Pepperoni
    case Margarita
    case FourCheeses
}
enum Topping{
    case Becon
    case Cheese
    case Mushrooms
    case Tomatoes
}
}
// Создать класс пиццерии, добавить массив с возможными видами пиццы. 
// Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
class Pizzeria{    
    private var pizzas: [Pizza]
    init (){
        self.pizzas = []
    }
 
// Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
func addPizza(pizza: Pizza){
    self.pizzas.append(pizza)
    }
func menu() -> [Pizza]{
    return pizzas
    } 
}   
// Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
var pizzeria = Pizzeria()
let italiaThickPizza = Pizza(price: 23.12, type: .Italia, crustType: "thick", toppings: .Becon)
let italiaThinPizza = Pizza(price: 11.49, type: .Italia, crustType: "thin", toppings: .Tomatoes)

pizzeria.addPizza(pizza: italiaThickPizza)
pizzeria.addPizza(pizza: italiaThinPizza)

let allPizzas = pizzeria.menu()
for pizza in allPizzas {
    print("Pizza Type: \(pizza.type)")
    print("Crust Type: \(pizza.crustType)")
    print("Toppings: \(pizza.toppings)")
    print("Price: $\(pizza.price)")
    print("---------------")
}