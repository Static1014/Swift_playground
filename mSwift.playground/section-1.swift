// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let 变量 = "!!!!! \n 变量是可以以中文命名的"
println(变量)

let str1 = "数值转换"
let height = 1.32
let int = Int(height)
let float = Float(height)
let double = Double(height)

var boolean = true
var b = Bool(0)
b = Bool(1)

let 元组 = "元祖 ------ 数组"
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






