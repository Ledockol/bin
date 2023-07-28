import Swift

func isChet(a: Int) -> Bool {
        a % 2 == 0 
}

func discr(a:Int , b:Int , c:Int) -> Int{
    b*b - 4*a*c
}
func square(a:Int , b:Int) -> Int{
    a*b
}
func add(a:Int) -> Int{
var sum = 0
for num in 1...a{
    sum += num
    }
 return sum
}
var a:Int?=5
var b =a!
var c =a??5

//Создать перечисление которое имеет в виде кейсов 2 вида чая : зеленый и черный
enum teaType{
    case green
    case black
}
//Задать для кейсов азвание "BlackTea" и "GreenTea"
enum tea: String{
    case black = "BlackTea"
    case green = "GreenTea"
}
//Написать внутри перечисления функцию которая будет возвратщать цвет чая в строковом формате
//то есть если это "blackTea" то black а если "greenTea" то green
enum tea: String{
    case black = "BlackTea"
    case green = "GreenTea"

    func getColor() -> String{
        switch self{
            case .black : return self.rawValue
            case .green : return self.rawValue
        }
    }
}
var aTea = tea.blackTea
print(aTea.getColor)


enum tea{
    case black
    case green
    case red
}
var colorTea: tea = .black


//Создать массив а затем переменную с отсорированным по возратсанию

var a: [Int] = [5, 6, -14, 25]
var b: = a.sorted{by: <}


//Создать массив а затем переменнуб в которой ьулет храниться массив со значением +5

var a: [Int] = [5, 6, -14, 25]
var b: = a.map{$0 + 5}


//Создать массив а затем перемунную в которой хараниться не - не 12 остальное х2

var a: [Int] = [5, 6, -14, 25]
var b: = a.map{$0 * 2} .filter{$0 > 0 && $0 != 12}  


//Создаь словарь в котором ключ будет целым числом а щначение строкой

var a: [Int : String] = [:]


//массив второй без повторяющихся элементов
var a: [Int] = [2, 6, 25, 4, ,2 , 2, 10,2]
var b = Set(a)

//сумма массива больше 100 или меньше

func check(a:[Int])->Bool{
    a.reduce(0,+)>=100
}

//Перемнная в которой хранится замыкание в которое передается словарь в ходе замыкания выводится в консоль значения чей ключ больше 5
 var a = {(b:[Int:String])in
    for (key,value) in b{
        if key > 5{
            print(value)
        } 
    }
 }

 //Создать перечисление которое имеет в виде кейсов три вида чая зеленый черный и фруктовый
 // создать словарь в котором ключи это вид чая а значение это его стоимость и заполнить словарь


enum teaType: String{
    case green = "green"
    case black = "black"
    case frutty = "frutty"
}
var a: [teaType: Int] = [.green : 20, .black : 30, .frutty : 10]

// Функция на вход принимает такой же словарь а возвращает новый когторый 
//фруктовый чай на 30% больше. черный уменьшена в 1.6, у зеленого уменьшена на 9.5%

func correctCost(teaType: [Tea: Double]) -> [Tea: Double]){
    var res: [Tea: Double] = [:]
    for (key, value) in teaType{
        switch key:
        case .green: res.updateValue(value * 0.095 , forkey : key)
        case .black: res.updateValue(value / 1.6 , forkey : key)
        case .frutty: res.updateValue(value * 0.3 , forkey : key)
    }
    return res
}


//функ принммает два массива содержат координаты начала и конца отрезка
//первый х второй у . найти середину отрезка
func midpoint (x:[Double], x:[Double]) -> [Double]{
    var z: [Double] = []

    guard x.count == 2 && y.count == 2 else{
        return []
    }  
    return [(x[0] + y[0])/2, (x[1] + y[1])/2]
}

//массив от 1 до 50
var arr2 = Array(1...50)


var array = [Int]
    for i in 1...50{
        arr.append(i)
    }

//Замыкание принимает 2 числа возвращает их сумму
let sum:(Int,Int) -> Int = {(num1, num2) in return num1*num2}
print(su(12,12))

let res = sum(23, 31)
print(res)


//функция принимает замыкание  но ничего не возвращает. печатает тип щамыкагия
func nameFunc(closure: (Int) -> ()){
    print(type(of: closure))
}

//Создать массив при помощи форич и вывести значения

let arr = [1, 2, ,3, ,1 ,2 ,3]
arr.forEach{number in
print(number)
}


arr.forEach{print($0)}

//функция массива 4 чисел , если и=меньше или больше вернуть нилл. функция возвращает новый массив из 3 элементов 
//первый элемент это первый, второй сумма 2 и 3 а третий последний. сортировка по убыванию

func calculate(a: [Int])->[Int]?{
    guard a.count == 4 else{
        return nill
    }
    return [a[0], a[1]+a[2], a[3]].sorted(by:>)
}

//функция которая будет решать квадратное уравнение

func discr(a:Int , b:Int , c:Int, d:Int) -> (Double?,Double?){
    var c = c - d
    var dis = b*b - 4*a*c
    var sqDis = sqrt(Double(dis))
    if (a != 0 && dis > 0){
        var xO = Double((-b + Int(sqDis))) /Double((2 * a))
        var xT = Double((-b - Int(sqDis))) /Double((2 * a))
        return (xO,xT) 
    } else if (a != 0 && dis == 0){
        var xO = Double((-b + Int(sqDis))) /Double((2 * a))
        return(xO, nil)
    } else {
        return (nil,nil)
    }
}

//Создать перечисление чая и структуру в которой зарнится вид и стоимость


enum teaType: String{
    case green = "green"
    case black = "black"
    case frutty = "frutty"
}

struct typeTeaPrice {
    var name: teaType
    var cost: Double
}

//создать класс cafe в котором хранится массив с чаем переменная с массивои должна быть приватной 
// значение в массив должно устанавливаться в иницилизаторе
// _________________________________________

class Cafe{
    private var tea: [Tea]
    init (tea:[Tea]){
        self.tea = tea
    }
}


// Создать протокол для меню. протокол должен сожержать стоимость и наименования. стоимость и названия должны быть get -only

protocol MenuProtocol {
    var price : Double {get}
    var name : String {get}
}

//Создайте класс кафе в нем должен быть массивс наименованиями меню и иницилизатор
// подпишите структуру чая с прошлого занятия на протокол из первого пункта 
// в качестве name должен быть вид чая и 'tea' то есть напимер для черного чая
// для чеиптрт чая блектиа для зеленого гринтиа

class Cafe{
    private var menu: [MenuProtocol]
    init (menu:[MenuProtocol]){
        self.menu = menu
    }
    struct Tea: MenuProtocol {
    var type: teaType
    var name : String{type.rawValue+"tea"}
    var price : Double
    }
    enum TeaType: String{
    case green = "green"
    case black = "black"
    case fruit = "fruit"

}
} 



// Создайте еще 3 кафе для который класс Cafe будет родительским

class <FirstCafe>: Cafe{}
class <SecondCafe>: Cafe{}
class <ThirdCafe>: Cafe{}

// Добавтье в родительский класс функцию add по добавлению новой позиции в меню
// Саму переменную сделать приватноей если она таковой еще не является
func add(_new: MenuProtocol){
    menu.append(new)
    }   

//Сделать так чтобы в первом из трех классов наследников функция add помиомо выполнения родительского класса
// печатала в констоль стоимость доьавляемой позиции

class FirstCafe: Cafe{
    override func add(_new: MenuProtocol){
        super.add(new)
        print(new.price)
    }
}

// Создать класс автомата с едой не реализовывать в нем ни методов ни свойств
// этот класс должен уметь делать тоже самое что и firstCafe

class VendingMachine: FirstCafe{}

// Сделать так чтобы от класса автоматна с напитками нельзя было наследоваться
final class VendingMachine: FirstCafe{}

// Создать две структуры: лимонад и салат Сделать так чтобы и то и то можно было 
// добавить в меню кафе

struct Salat: MenuProtocol{
    var name : String
    var price : Double
}
struct Lemonade: MenuProtocol{
    var name : String
    var price : Double
}

let cafe = Cafe(menu:[])
let lemonade = Lemonade("Fresh",10)
let salat = Salat("Fresh",20)
cafe.add(lemonade)
cafe.add(salat)
// Добавьте в класс кафе функцию которая возвращает все позиции меню

extension Cafe {
    func prntMenu() -> MenuProtocol{
        menu
    }

    
}
// Добавьте в класс кафе функцию которая на основе цены возвращает массив позиция которые можно купить
func getMass(price :Double)-> [String]{
var item: [String] = []
for i in menu{
    if i.cost <= price{
        item.append(i.name)
    }
}
return item
}


// задать переменой меню уровень fileprivate
fileprivate class Cafe{
    fileprivate var menu: [MenuProtocol]

    init (menu:[MenuProtocol]){
        self.menu = menu
    }
}

//Добавить в класс автомата с едой функцию которая на основе полученного номера
// (номера элемента в масиве) и денег возвращает товар под необходимым ноером,
// если денег хватает и нил если не хвататет . Если товар не найдет тоже нил

func getItemProduct(index: Int, money: Double) -> MenuProtocol?{
    guard index >= 0 && index < menu.count else {return nil}
    letitem = menu[index]

    if money >= item.cost{
        return item
    } else{
        return nil
    }
}

// Создать протокол в котором булет дву функции start и final

protocol WorkProtocol {
    func start()
    func final()
}

// Для класса автомата с едой создать расширение в котором будут содержаться
// функции из протокола из пункта 6(класс должен быть подписан на протокол)
// В функции старт должно печататься о начале работы автомата а в финал о завершении

extension VendingMachine: WorkProtocol{

    func start(){
print ("Start work")
    }
    func final(){
print ("fianl work")
    }

}



// 









