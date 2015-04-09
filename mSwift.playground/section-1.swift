// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let 变量 = "!!!!! \n 变量是可以以中文命名的"
println(变量)

// 数值类型转换
let str1 = "数值转换"
let height = 1.32
let int = Int(height)
let float = Float(height)
let double = Double(height)

var boolean = true
var b = Bool(0)
b = Bool(1)

// 元组
let 元组 = "元组 ------ 数组"
let man = ("Jack", 32, 1.69)

let (name, age, tall) = man
println("name : \(name)")
println("name : \(age)")
println("name : \(tall)")

let (_, age2, _) = man
println("age2 : \(age2)")

println("\n下标取值 \n name : \(man.0) \n age : \(man.1) \n tall : \(man.2)")

let woman = (wName:"女人", wAge:32, wHeight:1.73)

println("\n元组下标命名 \n name : \(woman.wName) \n age : \(woman.wAge) \n tall : \(woman.wHeight)")

// 可选类型
let 可选类型 = "可选类型"; println("\n\(可选类型)")
var value:Int?
if value == nil {
    println("value is nil")
} else {
    println("value is \(value)")
}
value = 123
// 断言，如果表达式为false，中断执行
assert(value != nil, "断言")
println("可选类型要用value!的方式取值 value is \(value)")
println("value is \(value!)")

// 取余数
println("\n9%5 = \(9%5)")
println("9%2.5 = \(9%2.5)")

// 区间表达式
var line = 1...5
println("\n\(line)")
line = 1..<5

// ***************    字符串   ***************
var str11 = ""
var str12 = String()

if str11.isEmpty {
    println("\nstr11 is nil")
}

var st:String?
if st == nil {
    st = "st"
    if st != nil {
        println("st : \(st!)")
    }
}

var msg1 = "11111", msg2 = "11111", msg3 = "1111133311111"
if msg1 == msg2 {
    println("msg1 == msg2")
}
if msg3.hasPrefix(msg1) {
    println("以msg1开头 msg3 has prefix msg1")
}
if msg3.hasSuffix(msg1) {
    println("以msg1结尾 msg3 has suffix msg1")
}

// 数组
var 空数组 = []
var empty:[String] = [String]()
var 漫画书 = ["海贼王", "死神", "进击的巨人"]
var 混合数组 = [12, "3123", false]
println(empty)
println(漫画书)
混合数组[0] = "oodsafs"
println(混合数组)

println("\(混合数组[1])+\(混合数组[2])")
var i = 混合数组[0]
var j = 混合数组[1]
var m = 混合数组[2]

var 长数组 = [111, 222, 333, 444, 555]
长数组[0] = 9
println(长数组)
长数组.insert(111, atIndex: 0)
println(长数组)
长数组.removeAtIndex(0)
println(长数组)
长数组.removeAtIndex(0)
println(长数组)
长数组.insert(111, atIndex: 0)
长数组.insert(000, atIndex: 0)
println(长数组)
println(长数组.count)
for valuee in 长数组 {
    println("\(valuee)")
}
for (index, temp) in enumerate(长数组) {
    println("\(index) : \(temp)")
}
for index in 0...3 {
    println("--------\(长数组[index])")
}

// 字典
var dic:Dictionary? = Dictionary<String, String>()
var dic1 = Dictionary<Int, String>()


dic = ["0":"000", "1":"111"]
println(dic)

dic1 = [0:"000", 1:"111"]
println(dic1)

dic1[2] = "222"
println(dic1)
dic1[2] = nil
println(dic1)
// 遍历字典
for (key, value) in dic1 {
    println("\(key) : \(value)")
}
for key in dic1.keys {
    println("\(key) ")
}
for value in dic1.values {
    println("\(value)")
}

// switch语句
var n = 4
switch n {
case 0...1 :
    println("0...1")
case 2...6:
    println("2...6")
default:
    println("default")
}

var nn = "111"
switch nn {
case "1","11","111":
    println("111111111111")
case "2","222":
    println("2222222222222")
default:
    println("ddddd")
}
var point = (0, 2)
switch point {
case (0, 0):
    println("0,0")
case (0...999, 0...999):
    println("111")
    fallthrough // 穿透
case (_, 0...2):
    println("222")
default:
    println("default")
}

// 函数

func 取最小值(参数1:Int, 参数2:Int) -> Int {
    if 参数1 < 参数2 {
        return 参数1
    } else {
        return 参数2
    }
}

println("------ \(取最小值(1, 3))")

func add(var value:Int) {
    ++value
}
println(add(1))

var iii = 11
func add(inout value:Int) {
    ++value
}
add(&iii)
println(iii)

// 类
class Woman {
    var name = "女人类"
    var age = 12
    var height = 1.72
}

struct Womans {
    var name = "女人结构体"
    var age = 11
    var height = 1.65
}

var w1 = Womans()
var w2 = Womans(name: "女人结构体初始化", age: 21, height: 1.75)

var w3 = Woman()
var w4 = Woman()
w3.name

class Point {
    init(){
        
    }
    init(x:Double, y:Double) {
        self.x = x
        self.y = y
    }
    var m:Int? {
        get{
            return self.m
        } set {
            self.m = newValue
        }
    }
    
    var x = 0.1
    var y = 5.0
    var vag:Double {
        get {
            return ((x+y)/2)
        }
        set {
            x = newValue - 1.0
            y = newValue + 1.0
        }
    }
    var mm : Double = 9.9 {
        willSet {
            println("new-----\(newValue)")
        }
        didSet {
            println("old-----\(oldValue)")
        }
    }
    
    class var sv: Int {
        return 1
    }
    
    func getX()->Double {
        return self.x
    }
    func getY()->Double {
        return self.y
    }
    
    func prints<T>(str:T) -> T {
        return str
    }
    
}
var p = Point()
p.prints(9.9)
p.prints("sfwe")
var p2 = Point(x: 8.0,y: 8.9)

p.mm = 4
p.m = 8
println("=====\(p.m)")
Point.sv

class BigPoint:Point {
    override func getY() -> Double {
        return x*y
    }
}
var bp = BigPoint()
bp.getY()

// 协议
protocol delegate {
    var name:String {get set}
    var age:Int {get}
    
    class func getName()
    
    func getAge() -> Int
    
    mutating func getXXX()
}







